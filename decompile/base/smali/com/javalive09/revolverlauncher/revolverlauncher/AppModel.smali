.class public Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;
.super Ljava/lang/Object;
.source "AppModel.java"


# instance fields
.field private abc:C

.field private final mApkFile:Ljava/io/File;

.field private mAppLabel:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInfo:Landroid/content/pm/ResolveInfo;

.field private mMounted:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    .line 37
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mApkFile:Ljava/io/File;

    .line 38
    return-void
.end method

.method private getItems(Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 91
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz p1, :cond_1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 93
    .local v0, "charSequence":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 93
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 93
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 94
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    return-object v0

    .line 98
    .end local v0    # "charSequence":[Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private launchShortCutAPP(Landroid/content/pm/ShortcutInfo;)V
    .locals 7
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 125
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    if-eqz v0, :cond_0

    .line 126
    nop

    .line 127
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public getAbc()C
    .locals 1

    .line 132
    iget-char v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->abc:C

    return v0
.end method

.method public getApplicationPackageName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 45
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDir()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 139
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mMounted:Z

    goto :goto_0

    .line 143
    :cond_1
    iget-boolean v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mMounted:Z

    if-nez v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mMounted:Z

    .line 148
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 155
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mAppLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mAppLabel:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mAppLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mMounted:Z

    if-nez v0, :cond_4

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 59
    iput-boolean v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mMounted:Z

    .line 60
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mAppLabel:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mMounted:Z

    .line 63
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    iput-object v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mAppLabel:Ljava/lang/String;

    .line 67
    .end local v0    # "label":Ljava/lang/CharSequence;
    :goto_1
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 68
    .local v0, "fir":C
    invoke-static {v0}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->abc:C

    .line 69
    const-string v1, "peter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->abc:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "fir":C
    :cond_4
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getShortCutItems(Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 83
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getItems(Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortCutList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getShortCutListInfo()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortCutListInfo()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 104
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/4 v1, 0x0

    return-object v1

    .line 108
    :cond_0
    const/16 v1, 0xb

    .line 110
    .local v1, "queryFlags":I
    new-instance v2, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v2}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 111
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v2

    iget-object v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->mInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 112
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 110
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    return-object v2
.end method

.method public launchShortCut(Landroid/content/pm/ShortcutInfo;)V
    .locals 2
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->launchShortCutAPP(Landroid/content/pm/ShortcutInfo;)V

    .line 120
    :cond_0
    return-void
.end method
