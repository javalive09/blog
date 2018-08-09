.class Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$1;
.super Ljava/lang/Object;
.source "AbcPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->postSetSection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

.field final synthetic val$num:I


# direct methods
.method constructor <init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 95
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$1;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    iput p2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$1;->val$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$1;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$1;->val$num:I

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setSelection(I)V

    .line 99
    return-void
.end method
