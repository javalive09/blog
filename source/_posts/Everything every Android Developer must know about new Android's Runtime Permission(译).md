---
title: Everything every Android Developer must know about new Android's Runtime Permission(译)
date: 2017-04-07 18:30:17
tags:
---

<!-- more -->

Android M's name was just announced officially days ago. The final version is almost there and would be released not so long.
> android M的名字在几天前被官方发布。最终的正式版本也即将来临。

Although Android is being keep developed but the latest update to Android M is totally different since there is some major change that would change everything like new Runtime Permission. Surprisingly it is not much talked about in Android Developer community even though it is extremely important and may cause some big trouble in the near future.
> android系统在不断的被开发着，最近更新的android M和以往有很大不同，像运行时权限的加入将会引起颠覆性的变化。奇怪的是android 开发社区对此谈论很少，尽管这很重要并且可能会引起一些大问题在不远的将来。

That's the reason why I decide to blog about this topic today. Everything you need to know about this new Runtime Permission including how to implement it in your code. Let's do it before it's too late.
> 这就是我今天把这个作为讨论主题的原因。对运行时权限的掌握包括了代码的实现。现在就下手，亡羊补牢。


# The New Runtime Permission
> 运行时权限

Android's permission system is one of the biggest security concern all along since those permissions are asked for at install time. Once installed, the application will be able to access all of things granted without any user's acknowledgement what exactly application does with the permission.
> android app安装时要求授予所有的权限，这一点导致android的权限控制系统被认为是最大的安全问题之一。一旦安装 这个app将能访问任何东西，在用户毫不知情的情况下。

No surprise why there are so many bad guys trying to collect user's personal data through this security weakness and use it in the bad way.
> 这也难怪有这么多坏人通过这个安全缺陷试图收集用户数据了。

Android team also know this concern. 7 year passed, finally permission system is redesigned. In Android 6.0 Marshmallow, application will not be granted any permission at installation time. Instead, application has to ask user for a permission one-by-one at runtime.
> android team 也知道这个事。7年过去了，最终权限系统做了重新的设计。在android6.0 棉花糖这个版本里，应用程序在安装时不会被授予任何权限。而是在运行时，一个一个的向用户申请权限。

![](https://inthecheesefactory.com/uploads/source/blog/mpermission/runtimepermission.jpg)

Please note that permission request dialog shown above will not launch automatically. Developer has to call for it manually. In the case that developer try to call some function that requires a permission which user has not granted yet, the function will suddenly throw an Exception which will lead to the application crashing.
> 需要注意的是权限申请弹框不会自动弹出。开发者需要手动调用。在开发者试图调用某个用户没有授予的权限的时候，会抛出异常导致程序崩溃。

![](https://inthecheesefactory.com/uploads/source/blog/mpermission/runtimepermissioncrash.jpg)

Besides, user is also able to revoke the granted permission anytime through phone's Settings application.
> 另外，用户可以在手机的设置程序里面撤销授予的权限。

![](https://inthecheesefactory.com/uploads/source/blog/mpermission/permissionsrevoke.jpg)

You might already feel like there is some cold wind blowing through your arms ... If you are an Android Developer, you will suddenly know that programming logic is totally changed. You cannot just call a function to do the job like previous but you have to check for the permission for every single feature or your application will just simply crash !
> 如果你是android开发者，可能对此会有种寒风吹胳膊一样的感觉。你可能会意识到编程逻辑完全变了。不能像以前一样进行功能调用了，需要对每一个功能调用申请权限，否则将会是程序崩溃。

Correct. I would not spoil you that it is easy. Although it is a great thing for user but it is truly nightmare for us developer. We have to take coding to the next level or it will surely have a problem in both short-term and long-term.
> 是的，我不能哄骗你说这是简单的事。尽管对用户来说这是一个很好的事，但是对开发者来说确是一个噩梦。我们必须要通过编码来解决它否则这迟早是个问题。

Anyway this new Runtime Permission will work like described only when we set the application's targetSdkVersion to 23 which mean it is declared that application has already been tested on API Level 23. And this feature will work only on Android 6.0 Marshmallow. The same app will run with same old behavior on pre-Marshmallow device.
> 不管怎样，运行时权限只在你声明targetSdkVerison 是23的时候才起作用（意味着你已经在api level 23上做过测试了）。这个特性将在android6.0设备上起作用。运行在小于6.0的设备上的app将不会有什么变化。

# What happened to the application that has already been launched?
> 已经发布的应用会怎么样？

This new permission system may cause you some panic right now. "Hey ! What's about my application that launched 3 years ago. If it is installed on Android 6.0 device, does this behavior also applied? Will my application also crash?!?"
> 现在新的权限系统可能引起了一些恐慌。“嘿！ 我3年前发布的应用程序会怎么样？如果它被安装到6.0的设备上，旧的权限申请行为允许吗？我的程序将崩溃么?”

Don't worry. Android team has already thought about it. If the application's targetSdkVersion is set to less than 23. It will be assumed that application is not tested with new permission system yet and will switch to the same old behavior: user has to accept every single permission at install time and they will be all granted once installed !
> 不要担心。android团队考虑过这个问题。如果应用程序的targetSdkVersion 设置小于23. 它将被假定没有在新的权限系统中测试过而仍旧使用旧的权限系统。用户将会在程序安装时一次性授予所有的权限。

As a result, application will run perfectly like previous. Anyway please note that user still can revoke a permission after that ! Although Android 6.0 warn the user when they try to do that but they can revoke anyway.
> 然后，程序将会像以前一样完美运行。另外请注意用户仍然可以在安装后撤销权限！尽管android6.0警示用户尝试撤销的操作，但是用户可以那么做。

![](https://inthecheesefactory.com/uploads/source/blog/mpermission/mpermission22denyperm_1.jpg)

Next question in your head right now. So will my application crash?
> 现在接下来的问题是，你的程序会崩溃么？

Such a kindness sent from god delivered through the Android team. When we call a function that requires a permission user revoked on application with targetSdkVersion less than 23, no any Exception will be thrown. Instead it will just simply do nothing. For the function that return value, it will return either null or 0 depends on the case.
> 善意的主把这事传递给了android team。当我们在targetSdkVersion 小于23的情况下，我们申请了一个用户拒绝的权限，不会抛出任何异常。什么也不会发生。在这种情况下，返回值将是null或0。

![](https://inthecheesefactory.com/uploads/source/blog/mpermission/targetsdkversion2223.jpg)

But don't be too happy. Although application would not be crashed from calling a function. It may still can crash from what that application does next with those returned value.
> 别高兴的太早。尽管程序不会因为调用功能导致崩溃。但是程序将可能因为返回值崩溃。

Good news (at least for now) is these cases may rarely occur since this permission revoking feature is quite new and I believe that just few user will do it. In case they do, they have to accept the result.
> 好消息是新权限的撤销这种情况可能很少发生的。如果他们这么做了，他们就得接受这个结果。

But in the long run, I believe that there will be millions of users who turn some permission off. Letting our application not to work perfectly on new device is not acceptable.
> 但是长远看来，我相信将会有大量的用户关闭一些权限。让我们的程序不能在新设备上完美运行是不可接受的。

To make it work perfectly, you better modify your application to support this new permission system and I suggest you to start doing it right now !
> 为了让程序完美工作， 你最好修改程序代码来支持新的权限系统，我建议现在就这么做！

For that application which source code is not successfully modified to support Runtime Permission, DO NOT release it with targetSdkVersion 23 or it will cause you a trouble. Move the targetSdkVersion to 23 only when you pass all the test.
> 对于那些源码没有成功修改支持运行时权限，不要发布这个程序用targetSdkVersion23 否则会有问题。测试成功之后再把targetSdkVersion修改到23。

Warning: Right now when you create a new project in Android Studio. targetSdkVersion will be automatically set to the latest version, 23. If you are not ready to make your application fully support the Runtime Permission, I suggest you to step down the targetSdkVersion to 22 first.
> 警告：现在当你创建了一个新项目在android studio。 targetSdkVersion 将会自动设置成23。 如果你没有准备好，将程序完全支持运行时权限，我建议你把targetSdkVersion改成22。

# Automatically granted permissions
> 自动授予权限

There is some permission that will be automatically granted at install time and will not be able to revoke. We call it Normal Permission (PROTECTION_NORMAL). Here is the full list of them:
> 有一些权限在程序安装时是自动授予的不允许撤销。我们叫他基本权限。下面是完整的列表：
```
android.permission.ACCESS_LOCATION_EXTRA_COMMANDS
android.permission.ACCESS_NETWORK_STATE
android.permission.ACCESS_NOTIFICATION_POLICY
android.permission.ACCESS_WIFI_STATE
android.permission.ACCESS_WIMAX_STATE
android.permission.BLUETOOTH
android.permission.BLUETOOTH_ADMIN
android.permission.BROADCAST_STICKY
android.permission.CHANGE_NETWORK_STATE
android.permission.CHANGE_WIFI_MULTICAST_STATE
android.permission.CHANGE_WIFI_STATE
android.permission.CHANGE_WIMAX_STATE
android.permission.DISABLE_KEYGUARD
android.permission.EXPAND_STATUS_BAR
android.permission.FLASHLIGHT
android.permission.GET_ACCOUNTS
android.permission.GET_PACKAGE_SIZE
android.permission.INTERNET
android.permission.KILL_BACKGROUND_PROCESSES
android.permission.MODIFY_AUDIO_SETTINGS
android.permission.NFC
android.permission.READ_SYNC_SETTINGS
android.permission.READ_SYNC_STATS
android.permission.RECEIVE_BOOT_COMPLETED
android.permission.REORDER_TASKS
android.permission.REQUEST_INSTALL_PACKAGES
android.permission.SET_TIME_ZONE
android.permission.SET_WALLPAPER
android.permission.SET_WALLPAPER_HINTS
android.permission.SUBSCRIBED_FEEDS_READ
android.permission.TRANSMIT_IR
android.permission.USE_FINGERPRINT
android.permission.VIBRATE
android.permission.WAKE_LOCK
android.permission.WRITE_SYNC_SETTINGS
com.android.alarm.permission.SET_ALARM
com.android.launcher.permission.INSTALL_SHORTCUT
com.android.launcher.permission.UNINSTALL_SHORTCUT
```

Just simply declare those permissions in AndroidManifest.xml and it will work just fine. No need to check for the permission listed above since it couldn't be revoked.
> 把他们声明到AndroidManifest.xml中即可。因为他们是不可撤销的所有也不需要进行权限检查。

# Make your application support new Runtime Permission
> 让你的程序支持运行时权限

Now it's time to make our application support new Runtime Permission perfectly. Start with setting compileSdkVersion and targetSdkVersion to 23.
> 是时候让你的程序完美支持运行时权限了。从设置compileSdkVersion和targetSdkVersion为23开始。
```
android {
    compileSdkVersion 23
    ...

    defaultConfig {
        ...
        targetSdkVersion 23
        ...
    }
```
In this example, we try to add a contact with a function below.
> 在这个示例中，我们尝试添加一个联系人。
```
    private static final String TAG = "Contacts";
    private void insertDummyContact() {
        // Two operations are needed to insert a new contact.
        ArrayList<ContentProviderOperation> operations = new ArrayList<ContentProviderOperation>(2);

        // First, set up a new raw contact.
        ContentProviderOperation.Builder op =
                ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI)
                        .withValue(ContactsContract.RawContacts.ACCOUNT_TYPE, null)
                        .withValue(ContactsContract.RawContacts.ACCOUNT_NAME, null);
        operations.add(op.build());

        // Next, set the name for the contact.
        op = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI)
                .withValueBackReference(ContactsContract.Data.RAW_CONTACT_ID, 0)
                .withValue(ContactsContract.Data.MIMETYPE,
                        ContactsContract.CommonDataKinds.StructuredName.CONTENT_ITEM_TYPE)
                .withValue(ContactsContract.CommonDataKinds.StructuredName.DISPLAY_NAME,
                        "__DUMMY CONTACT from runtime permissions sample");
        operations.add(op.build());

        // Apply the operations.
        ContentResolver resolver = getContentResolver();
        try {
            resolver.applyBatch(ContactsContract.AUTHORITY, operations);
        } catch (RemoteException e) {
            Log.d(TAG, "Could not add a new contact: " + e.getMessage());
        } catch (OperationApplicationException e) {
            Log.d(TAG, "Could not add a new contact: " + e.getMessage());
        }
    }
```
The above code requires WRITE_CONTACTS permission. If it is called without this permission granted, application will suddenly crash.
> 以上的代码需要WRITE_CONTACTS权限。如果调用的时候没有授予这个权限，程序将马上崩溃。

Next step is to add a permission into AndroidManifest.xml with same old method.
> 下一步是在AndroidManifest.xml中添加权限，跟以前的做法一样。
```
<uses-permission android:name="android.permission.WRITE_CONTACTS"/>
```

Next step is we have to create another function to check that permission is granted or not. If it isn't then call a dialog to ask user for a permission. Otherwise, you can go on the next step, creating a new contact.
> 下一步是我们必须创建另一个功能来检查权限是否被授予。如果没有，则弹出对话框，请求用户授予。如果有，则继续创建一个联系人。

Permissions are grouped into Permission Group like table below.
> 权限是按照权限组的形式来分组的，如下表：

![](https://inthecheesefactory.com/uploads/source/blog/mpermission/permgroup.png)

If any permission in a Permission Group is granted. Another permission in the same group will be automatically granted as well. In this case, once WRITE_CONTACTS is granted, application will also grant READ_CONTACTS and GET_ACCOUNTS.
> 如果权限组中的任何一个权限被授予了，同组的其他的权限将会自动授予。在这种情况下，WRITE_CONTACTS被授予了，也意味着READ_CONTACTS 和 GET_ACCOUNTS也被授予了。

Source code used to check and ask for permission is Activity's checkSelfPermission and requestPermissions respectively. These methods are added in API Level 23.
> 代码中需要分别的在activity中检查和请求权限。这些代码是API23加入的。
```
    final private int REQUEST_CODE_ASK_PERMISSIONS = 123;

    private void insertDummyContactWrapper() {
        int hasWriteContactsPermission = checkSelfPermission(Manifest.permission.WRITE_CONTACTS);
        if (hasWriteContactsPermission != PackageManager.PERMISSION_GRANTED) {
            requestPermissions(new String[] {Manifest.permission.WRITE_CONTACTS},
                    REQUEST_CODE_ASK_PERMISSIONS);
            return;
        }
        insertDummyContact();
    }
```

If permission has already been granted, insertDummyContact() will be suddenly called. Otherwise, requestPermissions will be called to launch a permission request dialog like below.
> 如果权限已经授予了，会直接调用insertDummyContact()，否则会弹出一个请求弹窗。

![](https://inthecheesefactory.com/uploads/source/blog/mpermission/requestpermission.jpg)

No matter Allow or Deny is chosen, Activity's onRequestPermissionsResult will always be called to inform a result which we can check from the 3rd parameter, grantResults, like this:
> 无论允许还是拒绝，Activity的onRequestPermissionsResult都会返回结果，像这样：
```
    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        switch (requestCode) {
            case REQUEST_CODE_ASK_PERMISSIONS:
                if (grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                    // Permission Granted
                    insertDummyContact();
                } else {
                    // Permission Denied
                    Toast.makeText(MainActivity.this, "WRITE_CONTACTS Denied", Toast.LENGTH_SHORT)
                            .show();
                }
                break;
            default:
                super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
```
This is how Runtime Permission works. Code is quite complicated but be used to it ... To make you application works perfectly with Runtime Permission, you have to handle all the case with the same method shown above.
> 这是运行时权限的流程。代码有点复杂但是为了让你的程序完美运行，就是得像上面的代码那样控制所有的情况。

If you want to punch some wall, it is a good time now ...
> 如果要撞墙的话，也许正是时候。

# Handle "Never Ask Again"
> 控制不在提醒

If user denied a permission. In the second launch, user will get a "Never ask again" option to prevent application from asking this permission in the future.
> 如果用户拒绝了权限。下次再申请时，用户会看见一个不在提醒的选项，防止程序以后再弹请求弹窗。

![](https://inthecheesefactory.com/uploads/source/blog/mpermission/neveraskagain.jpg)

If this option is checked before denying. Next time we call requestPermissions, this dialog will not be appeared for this kind of permission anymore. Instead, it just does nothing.
> 如果在拒绝权限后选择了这个。下次请求权限时，弹窗不会再出现，不会触发任何东西。

However it is quite bad in term of UX if user does something but there is nothing interact back. This case has to be handled as well. Before calling requestPermissions, we need to check that should we show a rationale about why application needs the being-requested permission through Activity's shouldShowRequestPermissionRationale method. Source code will now look like this:
> 但是如果用户做了这个操作却得不到任何反馈，这种体验真是太差了。这种情况也需要处理，在申请权限之前，我们需要判断是否弹出请求框，通过shouldShowRequestPermissionRationale来判断。源码如下：
```
    final private int REQUEST_CODE_ASK_PERMISSIONS = 123;

    private void insertDummyContactWrapper() {
        int hasWriteContactsPermission = checkSelfPermission(Manifest.permission.WRITE_CONTACTS);
        if (hasWriteContactsPermission != PackageManager.PERMISSION_GRANTED) {
                if (!shouldShowRequestPermissionRationale(Manifest.permission.WRITE_CONTACTS)) {
                    showMessageOKCancel("You need to allow access to Contacts",
                            new DialogInterface.OnClickListener() {
                                @Override
                                public void onClick(DialogInterface dialog, int which) {
                                    requestPermissions(new String[] {Manifest.permission.WRITE_CONTACTS},
                                            REQUEST_CODE_ASK_PERMISSIONS);
                                }
                            });
                    return;
                }
            requestPermissions(new String[] {Manifest.permission.WRITE_CONTACTS},
                    REQUEST_CODE_ASK_PERMISSIONS);
            return;
        }
        insertDummyContact();
    }

    private void showMessageOKCancel(String message, DialogInterface.OnClickListener okListener) {
        new AlertDialog.Builder(MainActivity.this)
                .setMessage(message)
                .setPositiveButton("OK", okListener)
                .setNegativeButton("Cancel", null)
                .create()
                .show();
    }
```

The result are rational dialog will be shown when this permission is requested for the first time and also be shown if user has ever marked that permission as Never ask again. For the latter case, onRequestPermissionsResult will be called with PERMISSION_DENIED without any permission grant dialog.
> 当第一次申请权限的时候，或者请求用户标记过不再显示的权限的时候，说明弹窗会弹出。后一种情况，onRequestPermissionsResult会返回PERMISSION_DENIED，不会弹出请求框。

![](https://inthecheesefactory.com/uploads/source/blog/mpermission/rationaledialog.jpg)

# Asking for multiple permissions at a time
> 一次请求多个权限

There is definitely some feature that requires more than one permission. You could request for multiple permissions at a time with same method as above. Anyway don't forget to check the 'Never ask again' case for every single permission as well.
> 有很明确的特性来支持一次请求多个权限。你可以用上面的方法一次请求多个权限。不管怎样，也不要忘了每个权限的不再提示 这种情况。

Here is the revised code.
> 这是改进版的代码
```
    final private int REQUEST_CODE_ASK_MULTIPLE_PERMISSIONS = 124;

    private void insertDummyContactWrapper() {
        List<String> permissionsNeeded = new ArrayList<String>();

        final List<String> permissionsList = new ArrayList<String>();
        if (!addPermission(permissionsList, Manifest.permission.ACCESS_FINE_LOCATION))
            permissionsNeeded.add("GPS");
        if (!addPermission(permissionsList, Manifest.permission.READ_CONTACTS))
            permissionsNeeded.add("Read Contacts");
        if (!addPermission(permissionsList, Manifest.permission.WRITE_CONTACTS))
            permissionsNeeded.add("Write Contacts");

        if (permissionsList.size() > 0) {
            if (permissionsNeeded.size() > 0) {
                // Need Rationale
                String message = "You need to grant access to " + permissionsNeeded.get(0);
                for (int i = 1; i < permissionsNeeded.size(); i++)
                    message = message + ", " + permissionsNeeded.get(i);
                showMessageOKCancel(message,
                        new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                requestPermissions(permissionsList.toArray(new String[permissionsList.size()]),
                                        REQUEST_CODE_ASK_MULTIPLE_PERMISSIONS);
                            }
                        });
                return;
            }
            requestPermissions(permissionsList.toArray(new String[permissionsList.size()]),
                    REQUEST_CODE_ASK_MULTIPLE_PERMISSIONS);
            return;
        }

        insertDummyContact();
    }

    private boolean addPermission(List<String> permissionsList, String permission) {
        if (checkSelfPermission(permission) != PackageManager.PERMISSION_GRANTED) {
            permissionsList.add(permission);
            // Check for Rationale Option
            if (!shouldShowRequestPermissionRationale(permission))
                return false;
        }
        return true;
    }
```

When every single permission got its grant result, the result will be sent to the same callback method, onRequestPermissionsResult. I use HashMap to make source code looks cleaner and more readable.
> 当每个权限被授予的时候 onRequestPermissionsResult 都会被回调。我用了hashmap来管理他们。
```
    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        switch (requestCode) {
            case REQUEST_CODE_ASK_MULTIPLE_PERMISSIONS:
                {
                Map<String, Integer> perms = new HashMap<String, Integer>();
                // Initial
                perms.put(Manifest.permission.ACCESS_FINE_LOCATION, PackageManager.PERMISSION_GRANTED);
                perms.put(Manifest.permission.READ_CONTACTS, PackageManager.PERMISSION_GRANTED);
                perms.put(Manifest.permission.WRITE_CONTACTS, PackageManager.PERMISSION_GRANTED);
                // Fill with results
                for (int i = 0; i < permissions.length; i++)
                    perms.put(permissions[i], grantResults[i]);
                // Check for ACCESS_FINE_LOCATION
                if (perms.get(Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED
                        && perms.get(Manifest.permission.READ_CONTACTS) == PackageManager.PERMISSION_GRANTED
                        && perms.get(Manifest.permission.WRITE_CONTACTS) == PackageManager.PERMISSION_GRANTED) {
                    // All Permissions Granted
                    insertDummyContact();
                } else {
                    // Permission Denied
                    Toast.makeText(MainActivity.this, "Some Permission is Denied", Toast.LENGTH_SHORT)
                            .show();
                }
                }
                break;
            default:
                super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
```

The condition is flexible. You have to set it by your own. In some case, if even one permission is not granted, that feature will be just simply disabled. But in some case, it will still work but with limited feature. There is no suggestion from me. It is all by your design.
> 条件是灵活的。你自己去设置。在一些情况下，如果一个权限没授予，调用就失效。但是有些情况，能工作但是有限制。我没有什么建议，全凭你设计。

# Use Support Library to make code forward-compatible
> 使用支持包来向前兼容旧版本

Although the code above works perfectly on Android 6.0 Marshmallow. Unfortunate that it will crash on Android pre-Marshmallow since those functions called are added in API Level 23.
> 尽管上面的代码在android6.0上可以完美运行。不幸的是它会在23之前的设备上崩溃，因为这些api是在api23 加入的。

The straight way is you can check Build Version with code below.
> 最直接的方式是检查版本

```
        if (Build.VERSION.SDK_INT >= 23) {
            // Marshmallow+
        } else {
            // Pre-Marshmallow
        }
```
But code will be even more complicated. So I suggest you to use some help from Support Library v4 which is already prepared for this thing. Replace those functions with these:
> 但是代码太复杂。所以我建议你用support v4库代替一些方法。
```
- ContextCompat.checkSelfPermission()
```
No matter application is run on M or not. This function will correctly return PERMISSION_GRANTED if the permission is granted. Otherwise PERMISSION_DENIED will be returned.
> 无论程序运行在6.0上或者不在6.0上。都会正确返回PERMISSION_GRANTED或者PERMISSION_DENIED。
```
- ActivityCompat.requestPermissions()
```
If this function is called on pre-M, OnRequestPermissionsResultCallback will be suddenly called with correct PERMISSION_GRANTED or PERMISSION_DENIED result.
> 如果这个功能在6.0之前调用，OnRequestPermissionsResultCallback会直接返回PERMISSION_GRANTED或PERMISSION_DENIED。
```
- ActivityCompat.shouldShowRequestPermissionRationale() 
```
If this function is called on pre-M, it will always return false.
> 如果这个功能在6.0之前调用，总是返回false.

ALWAYS replace Activity's checkSelfPermission, requestPermissions and shouldShowRequestPermissionRationale with these functions from Support Library v4. And your application will work perfectly find on any Android version with same code logic. Please note that these functions require some additional parameter: Context or Activity. Nothing special to do, just pass what it wants correctly. Here is what source code will look like.
> 永远用support v4的方法代替checkSelfPermission， requestPermissions， shouldShowRequestPermissionRationale这3个方法。你的程序就会完美运行。需要注意的是这些功能需要一些额外的参数：Context 或 Activity。下面是代码：
```
    private void insertDummyContactWrapper() {
        int hasWriteContactsPermission = ContextCompat.checkSelfPermission(MainActivity.this,
                Manifest.permission.WRITE_CONTACTS);
        if (hasWriteContactsPermission != PackageManager.PERMISSION_GRANTED) {
            if (!ActivityCompat.shouldShowRequestPermissionRationale(MainActivity.this,
                    Manifest.permission.WRITE_CONTACTS)) {
                showMessageOKCancel("You need to allow access to Contacts",
                        new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                ActivityCompat.requestPermissions(MainActivity.this,
                                        new String[] {Manifest.permission.WRITE_CONTACTS},
                                        REQUEST_CODE_ASK_PERMISSIONS);
                            }
                        });
                return;
            }
            ActivityCompat.requestPermissions(MainActivity.this,
                    new String[] {Manifest.permission.WRITE_CONTACTS},
                    REQUEST_CODE_ASK_PERMISSIONS);
            return;
        }
        insertDummyContact();
    }
```
These methods are also available in Fragment from Android Support Library v4. So please feel free to move these logics into the Fragment.
> 这些代码在fragment中也能用。 可以轻松的把逻辑移动到fragment中。

# Shorten source code with 3rd Party Library
> 用第三方包减少代码

You will notice that code is quite complicated. No surprise, there are quite many of 3rd party libraries out there trying to solve this big thing. I gave a try with quite a lot of them and finally found one that satisfy me. It is hotchemi's PermissionsDispatcher.
> 你可能注意到了代码很复杂。不用担心，有许多第三方包试着解决这个问题。我自己试了好几个，找到了一个适合我的，hotchemi的[PermissionsDispatcher](https://hotchemi.github.io/PermissionsDispatcher/)。

What is does it exactly the same as I described above but just with shorter and cleaner code. Surely with some trade-off with flexibility. Please give it a try and see if it could be applied in your application. If it couldn't, you can go on the direct way which is also my choice right now.
> 它和我想的很一致只是代码更干净和简短了。当然用灵活性作为代价。可以试用一下是否适用于你的程序。如果不能的话，找些其他的。

# What will happen if permission is revoked while application is opened?
> 如果我的程序还开着，权限被收回的会发生什么？

As mentioned above, a permission can be revoked anytime through phone's Settings.
> 如上面提到的，权限可以随时在setting中收回。

![](https://inthecheesefactory.com/uploads/source/blog/mpermission/permissionsrevoke.jpg)

So what will happen if permission is revoked when application is opened? I have already given it a try and found that application's process is suddenly terminated. Everything inside application just simply stopped (since it is already terminated ...). It sounds make sense to me anyway since if OS allows the application to go on its process, it may summon Freddy to my nightmare. I mean even worse nightmare than currently is ...
> 程序再打开的情况下被收回权限，会发生什么呢？ 我试过这种情况，发现程序进程突然停止了。程序中所有的东西都停止了。对我来说可以理解。如果系统允许程序继续恐怖的事又会发生。

# Conclusion and Suggestion
> 结论和建议

I believe that you see the big picture of this new permission system quite clear right now. And I believe that you also see how big issue it is.
> 我相信通过几张大图你现在已经对新的权限系统很清晰了。也清楚了他的问题。

However you have no choice. Runtime Permission is already used in Android Marshmallow. We are at the point of no return. Only thing we could do right now is to make our application fully support this new permission system.
> 但是你没有选择。 新的权限系统已经在6.0上使用了。没有回头路了。我们唯一能做的就是让我们的程序支持新权限系统。

Good news is there are only few permission that requires Runtime Permission flow. Most of the frequently-used permissions, for example, INTERNET, are in Normal Permission are automatically granted and you have no need to do anything with them. In conclusion, there are just few part of code that you need to modify.
> 好消息是只有很少的权限需要运行时权限。大多数常用的权限，如联网，属于基本权限，是自动获取的，不需要我们做什么。总的来说，你只需要改很少的代码。

There are two suggestions to you all:
> 有2点建议：

1) Make Runtime Permission support an urgent issue
> 把运行时权限作为一个紧急的事。

2) Don't set application's targetSdkVersion to 23 if your code is not yet supported Runtime Permission. Especially when you create a new project from Android Studio, don't forget to take a look at build.gradle everytime for targetSdkVersion !
> 如果你的程序不支持运行时权限不要把targetSdkVersion设置成23。 尤其是新建工程的时候，不要忘记查看一下build.gradle的targetSdkVersion。

Talk about source code modification, I must admit that it is quite a big thing. If code structure is not designed good enough, you may need some serious reconstruction which will surely take some time. Or at least I believe that source code need to be refactored for every single application. Anyway like I said above, we have no choice ...
> 讨论一下关于代码的修改，这真是一件大事。如果代码结构没有设计好，你得需要一些时间重构。或至少需要重新整理。无论怎样，我们没选择。。。

In the man time, since permission concept is turned upside down. Right now if some permission is not granted, your application need to still be able to work with limited feature. So I suggest you to list all the feature that related to permission you requested. And write down all the case possible, if permission A is granted but permission B is denied, what will happen. Blah blah blah.
> 现在如果一些权限没有授予，你的程序仍然需要被限制正常工作。所以我建议你列出所有的和权限申请相关的特性。写出所有可能的情况。

Good luck with your code refactoring. Mark it as urgent in your to-do list and start do it today so it will contains no problem on the day Android M is publicly launched.
> 祝重构顺利。在to-do 列表中把它作为紧急的事。今天就搞定它，让程序能在android6.0正式发布的时候 顺利运行。

[*英文原文*](https://inthecheesefactory.com/blog/things-you-need-to-know-about-android-m-permission-developer-edition/en)