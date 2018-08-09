.class Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;

.field final synthetic val$appModel:Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;Ljava/util/List;Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;

    .line 95
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$1;->this$1:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;

    iput-object p2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$1;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$1;->val$appModel:Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 98
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$1;->val$list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 99
    .local v0, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$1;->val$appModel:Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    invoke-virtual {v1, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->launchShortCut(Landroid/content/pm/ShortcutInfo;)V

    .line 100
    return-void
.end method
