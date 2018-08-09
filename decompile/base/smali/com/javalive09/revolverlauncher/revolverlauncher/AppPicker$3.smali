.class Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;


# direct methods
.method constructor <init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 146
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private refreshColor(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "selectItem"    # I

    .line 177
    const/4 v0, 0x0

    .line 177
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$600(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 178
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, "child":Landroid/view/View;
    const v2, 0x7f070020

    if-ne v0, p2, :cond_1

    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;

    .line 181
    .local v2, "holder":Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;
    if-eqz v2, :cond_0

    .line 182
    iget-object v3, v2, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;->label:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v4}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$700(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    .end local v2    # "holder":Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;
    :cond_0
    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;

    .line 186
    .restart local v2    # "holder":Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;
    if-eqz v2, :cond_2

    .line 187
    iget-object v3, v2, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;->label:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v4}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$800(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "holder":Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, "firstChild":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 163
    .local v2, "height":I
    iget-object v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-virtual {v3, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    .line 164
    .local v3, "scrollYOffset":I
    div-int/lit8 v4, v2, 0x2

    const/16 v5, 0x11

    if-le v3, v4, :cond_1

    .line 165
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v0, v4}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$402(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;I)I

    .line 166
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$500(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$600(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    nop

    :cond_0
    move v0, v4

    .line 167
    .local v0, "selectItem":I
    invoke-direct {p0, p1, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->refreshColor(Landroid/widget/AbsListView;I)V

    .line 168
    .end local v0    # "selectItem":I
    goto :goto_0

    .line 169
    :cond_1
    iget-object v4, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v4, p2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$402(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;I)I

    .line 170
    iget-object v4, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v4}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$500(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I

    move-result v4

    if-ne v4, v5, :cond_2

    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$600(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    nop

    .line 171
    .restart local v0    # "selectItem":I
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->refreshColor(Landroid/widget/AbsListView;I)V

    .line 174
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

    .line 150
    if-nez p2, :cond_0

    .line 152
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$300(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$300(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;->this$0:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    invoke-static {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->access$400(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;->endSelect(I)V

    .line 156
    :cond_0
    return-void
.end method
