.class Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$5;
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

    .line 125
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$5;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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

    .line 128
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$5;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->access$100(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 129
    .local v0, "c":C
    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$5;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-static {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->access$100(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setDefaultItemNum(C)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 130
    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$5;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-static {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->access$000(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setDefaultItemNum(C)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 131
    return-void
.end method
