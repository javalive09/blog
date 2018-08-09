.class Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;


# direct methods
.method constructor <init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    .line 49
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$1;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endSelect(I)V
    .locals 2
    .param p1, "selectItemIndex"    # I

    .line 52
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$1;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->access$100(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$1;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-static {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->access$000(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->getSelectItemString()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setDefaultItemNum(C)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 53
    return-void
.end method
