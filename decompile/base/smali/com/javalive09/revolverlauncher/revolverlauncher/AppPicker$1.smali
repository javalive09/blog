.class Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$1;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->refreshData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

.field final synthetic val$data:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 76
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$1;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    iput-object p2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$1;->val$data:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$1;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$000(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$1;->val$data:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->access$100(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;Ljava/util/ArrayList;)V

    .line 80
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$1;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$200(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;I)V

    .line 81
    return-void
.end method
