.class Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;
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

    .line 148
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$6;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$6;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->access$000(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity$6;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;

    invoke-static {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;->access$300(Lcom/javalive09/revolverlauncher/revolverlauncher/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->refreshData(Ljava/util/ArrayList;)V

    .line 153
    return-void
.end method
