.class Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$2;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->postSetSection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

.field final synthetic val$num:I


# direct methods
.method constructor <init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 133
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    iput p2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$2;->val$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$2;->val$num:I

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setSelection(I)V

    .line 137
    return-void
.end method
