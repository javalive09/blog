.class Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;
.super Ljava/lang/Object;
.source "AbcPicker.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;


# direct methods
.method constructor <init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 122
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private refreshColor(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "selectItem"    # I

    .line 153
    const/4 v0, 0x0

    .line 153
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$400(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 155
    .local v1, "child":Landroid/widget/TextView;
    if-ne v0, p2, :cond_0

    .line 156
    if-eqz v1, :cond_1

    .line 157
    iget-object v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$500(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 160
    :cond_0
    if-eqz v1, :cond_1

    .line 161
    iget-object v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$600(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .end local v1    # "child":Landroid/widget/TextView;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, "firstChild":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 139
    .local v2, "height":I
    iget-object v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-virtual {v3, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    .line 140
    .local v3, "scrollYOffset":I
    div-int/lit8 v4, v2, 0x2

    const/16 v5, 0x11

    if-le v3, v4, :cond_1

    .line 141
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v0, v4}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$002(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;I)I

    .line 142
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$300(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$400(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    nop

    :cond_0
    move v0, v4

    .line 143
    .local v0, "selectItem":I
    invoke-direct {p0, p1, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->refreshColor(Landroid/widget/AbsListView;I)V

    .line 144
    .end local v0    # "selectItem":I
    goto :goto_0

    .line 145
    :cond_1
    iget-object v4, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v4, p2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$002(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;I)I

    .line 146
    iget-object v4, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v4}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$300(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I

    move-result v4

    if-ne v4, v5, :cond_2

    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$400(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    nop

    .line 147
    .restart local v0    # "selectItem":I
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->refreshColor(Landroid/widget/AbsListView;I)V

    .line 150
    .end local v0    # "selectItem":I
    .end local v2    # "height":I
    .end local v3    # "scrollYOffset":I
    :cond_3
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 126
    if-nez p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$000(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$100(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;I)V

    .line 128
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$200(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$200(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    invoke-static {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->access$000(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;->endSelect(I)V

    .line 132
    :cond_0
    return-void
.end method
