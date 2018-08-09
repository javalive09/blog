.class Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    .line 78
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 81
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    .line 82
    .local v0, "appModel":Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    const v3, 0x1030132

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 84
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getShortCutList()Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v0, v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getShortCutItems(Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 94
    .local v3, "items":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 95
    new-instance v4, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$1;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;Ljava/util/List;Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    .end local v3    # "items":[Ljava/lang/CharSequence;
    :cond_0
    const v3, 0x7f0b001f

    new-instance v4, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$2;

    invoke-direct {v4, p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4$2;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$4;Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 120
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 121
    const/4 v4, 0x1

    return v4
.end method
