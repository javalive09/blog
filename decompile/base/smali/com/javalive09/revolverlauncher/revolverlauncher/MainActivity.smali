.class public Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private abcPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

.field private appPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 148
    new-instance v0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$6;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)V

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    .line 26
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->appPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    .line 26
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->abcPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;
    .param p1, "x1"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    .line 26
    invoke-direct {p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->showDetailStopView(Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    .line 26
    invoke-direct {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->getData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getData()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_0

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 192
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;>;"
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 194
    .local v3, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Character;Ljava/util/ArrayList<Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;>;>;"
    const/4 v4, 0x0

    .line 194
    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 195
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 196
    .local v5, "pkg":Ljava/lang/String;
    const-string v6, "peter"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v6, "it":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 202
    .local v7, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 203
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    new-instance v10, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    invoke-direct {v10, p0, v9}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 204
    .local v10, "app":Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;
    invoke-virtual {v10}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getLabel()Ljava/lang/String;

    .line 205
    invoke-virtual {v10}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 206
    invoke-virtual {v10}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getAbc()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 207
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;>;"
    if-nez v11, :cond_1

    .line 208
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    .line 210
    :cond_1
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v10}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getAbc()C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v3, v12, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "app":Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;>;"
    goto :goto_1

    .line 194
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "it":Landroid/content/Intent;
    .end local v7    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 216
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    .line 217
    .local v5, "key":Ljava/lang/Character;
    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    .end local v5    # "key":Ljava/lang/Character;
    goto :goto_2

    .line 219
    :cond_4
    return-object v2
.end method

.method private registerReceiver()V
    .locals 3

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method private showDetailStopView(Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;)V
    .locals 5
    .param p1, "appModel"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    .line 157
    if-eqz p1, :cond_2

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .local v0, "apiLevel":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 161
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v2, "package"

    invoke-virtual {p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 163
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 165
    :cond_0
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const-string v2, "pkg"

    goto :goto_0

    :cond_1
    const-string v2, "com.android.settings.ApplicationPkgName"

    .line 166
    .local v2, "appPkgName":Ljava/lang/String;
    :goto_0
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .end local v2    # "appPkgName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    .end local v0    # "apiLevel":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 225
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->registerReceiver()V

    .line 36
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->appPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 37
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->appPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setShowCount(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setSelectItemColor(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setNormalItemColor(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    move-result-object v0

    .line 40
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setFocusGravity(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->build()V

    .line 41
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->appPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-direct {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->refreshData(Ljava/util/ArrayList;)V

    .line 43
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->abcPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 44
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->abcPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setShowCount(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setSelectItemColor(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setNormalItemColor(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    move-result-object v0

    .line 47
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setFocusGravity(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->build()V

    .line 49
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->appPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    new-instance v1, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$1;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setSelectListener(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 56
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->abcPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    new-instance v1, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$2;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setSelectListener(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 63
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->appPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    new-instance v1, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$3;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->appPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    new-instance v1, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->abcPicker:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    new-instance v1, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$5;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    return-void
.end method
