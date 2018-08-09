.class Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$2;
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


# direct methods
.method constructor <init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;

    .line 105
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$2;->this$1:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;

    iput-object p2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$2;->val$appModel:Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 108
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$2;->this$1:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;

    iget-object v0, v0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$2;->val$appModel:Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    invoke-static {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->access$200(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;)V

    .line 109
    return-void
.end method
