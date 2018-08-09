.class Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 63
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 66
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->access$000(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    .line 67
    .local v0, "app":Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;
    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10200000

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-virtual {v2, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
