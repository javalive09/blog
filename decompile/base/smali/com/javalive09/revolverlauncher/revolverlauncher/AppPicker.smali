.class public Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
.super Landroid/widget/ListView;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;,
        Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;,
        Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;
    }
.end annotation


# instance fields
.field private appAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

.field private focusGravity:I

.field private mDefaultSelectNum:I

.field private mFirstVisibleItem:I

.field private normalColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private selectColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private selectListener:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;

.field private showCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->showCount:I

    .line 31
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->selectColor:I

    .line 33
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->normalColor:I

    .line 39
    const/16 v0, 0x11

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->focusGravity:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->showCount:I

    .line 31
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->selectColor:I

    .line 33
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->normalColor:I

    .line 39
    const/16 v0, 0x11

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->focusGravity:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 28
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->appAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
    .param p1, "x1"    # I

    .line 28
    invoke-direct {p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setDefaultSelectNum(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 28
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->selectListener:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 28
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->mFirstVisibleItem:I

    return v0
.end method

.method static synthetic access$402(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$500(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 28
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->focusGravity:I

    return v0
.end method

.method static synthetic access$600(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 28
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->showCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 28
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->selectColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;

    .line 28
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->normalColor:I

    return v0
.end method

.method private postSetSection(I)V
    .locals 1
    .param p1, "num"    # I

    .line 133
    new-instance v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$2;

    invoke-direct {v0, p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$2;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;I)V

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method private setDefaultSelectNum(I)V
    .locals 4
    .param p1, "length"    # I

    .line 108
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->mDefaultSelectNum:I

    const/16 v1, 0x11

    const v2, 0x3fffffff    # 1.9999999f

    if-lez v0, :cond_1

    .line 109
    rem-int v0, v2, p1

    .line 110
    .local v0, "i":I
    iget v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->focusGravity:I

    if-ne v3, v1, :cond_0

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->showCount:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sub-int/2addr v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_1

    :cond_0
    sub-int v1, p1, v0

    goto :goto_0

    .line 111
    .local v1, "offset":I
    :goto_1
    add-int/2addr v2, v1

    iget v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->mDefaultSelectNum:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->postSetSection(I)V

    .line 112
    .end local v0    # "i":I
    .end local v1    # "offset":I
    goto :goto_4

    .line 113
    :cond_1
    rem-int v0, v2, p1

    .line 114
    .restart local v0    # "i":I
    iget v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->focusGravity:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->showCount:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sub-int/2addr v1, v0

    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_3

    :cond_2
    sub-int v1, p1, v0

    goto :goto_2

    .line 115
    .restart local v1    # "offset":I
    :goto_3
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setSelection(I)V

    .line 116
    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->postSetSection(I)V

    .line 118
    .end local v0    # "i":I
    .end local v1    # "offset":I
    :goto_4
    return-void
.end method


# virtual methods
.method public build()V
    .locals 2

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setDividerHeight(I)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setVerticalScrollBarEnabled(Z)V

    .line 144
    new-instance v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->showCount:I

    invoke-direct {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->appAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    .line 145
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->appAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    new-instance v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;

    invoke-direct {v0, p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$3;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;)V

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 194
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 125
    nop

    .line 129
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getSelectItemString()C
    .locals 3

    .line 88
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->focusGravity:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->appAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->mFirstVisibleItem:I

    iget v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->showCount:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->getItem(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getAbc()C

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->appAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->mFirstVisibleItem:I

    .line 90
    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->getItem(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getAbc()C

    move-result v0

    .line 88
    :goto_0
    return v0
.end method

.method public refreshData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;>;"
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->appAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$1;

    invoke-direct {v0, p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$1;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->post(Ljava/lang/Runnable;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public setDefaultItemNum(C)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
    .locals 4
    .param p1, "abc"    # C

    .line 94
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->appAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->appAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    invoke-virtual {v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    .local v0, "appModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;>;"
    const/4 v1, 0x0

    .line 96
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 96
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    invoke-virtual {v3}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getAbc()C

    move-result v3

    if-ne v3, p1, :cond_0

    .line 98
    iput v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->mDefaultSelectNum:I

    .line 99
    goto :goto_1

    .line 96
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->appAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;

    invoke-virtual {v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->setDefaultSelectNum(I)V

    .line 104
    .end local v0    # "appModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;>;"
    :cond_2
    return-object p0
.end method

.method public setFocusGravity(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
    .locals 0
    .param p1, "focusGravity"    # I

    .line 65
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->focusGravity:I

    .line 66
    return-object p0
.end method

.method public setNormalItemColor(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
    .locals 0
    .param p1, "normalColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 60
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->normalColor:I

    .line 61
    return-object p0
.end method

.method public setSelectItemColor(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
    .locals 0
    .param p1, "selectColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 55
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->selectColor:I

    .line 56
    return-object p0
.end method

.method public setSelectListener(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
    .locals 0
    .param p1, "selectListener"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;

    .line 70
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->selectListener:Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$OnSelectListener;

    .line 71
    return-object p0
.end method

.method public setShowCount(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
    .locals 0
    .param p1, "count"    # I

    .line 50
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;->showCount:I

    .line 51
    return-object p0
.end method
