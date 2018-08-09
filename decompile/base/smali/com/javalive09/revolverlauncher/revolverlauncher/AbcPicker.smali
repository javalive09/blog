.class public Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
.super Landroid/widget/ListView;
.source "AbcPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;,
        Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;
    }
.end annotation


# instance fields
.field private focusGravity:I

.field private mDefaultSelectNum:I

.field private mFirstVisibleItem:I

.field private normalColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private numAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;

.field private selectColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private selectListener:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;

.field private showCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->showCount:I

    .line 26
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->selectColor:I

    .line 28
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->normalColor:I

    .line 33
    const/16 v0, 0x11

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->focusGravity:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->showCount:I

    .line 26
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->selectColor:I

    .line 28
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->normalColor:I

    .line 33
    const/16 v0, 0x11

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->focusGravity:I

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 23
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->mFirstVisibleItem:I

    return v0
.end method

.method static synthetic access$002(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
    .param p1, "x1"    # I

    .line 23
    invoke-direct {p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->postSetSection(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 23
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->selectListener:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 23
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->focusGravity:I

    return v0
.end method

.method static synthetic access$400(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 23
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->showCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 23
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->selectColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;

    .line 23
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->normalColor:I

    return v0
.end method

.method private postSetSection(I)V
    .locals 1
    .param p1, "num"    # I

    .line 95
    new-instance v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$1;

    invoke-direct {v0, p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$1;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;I)V

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method private setDefaultSelectNum()V
    .locals 4

    .line 104
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->mDefaultSelectNum:I

    const/16 v1, 0x11

    const v2, 0x3fffffff    # 1.9999999f

    if-lez v0, :cond_1

    .line 105
    const/16 v0, 0xb

    .line 106
    .local v0, "i":I
    iget v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->focusGravity:I

    if-ne v3, v1, :cond_0

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->showCount:I

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, 0x1a

    sub-int/2addr v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_1

    :cond_0
    rsub-int/lit8 v1, v0, 0x1a

    goto :goto_0

    .line 107
    .local v1, "offset":I
    :goto_1
    add-int/2addr v2, v1

    iget v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->mDefaultSelectNum:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->postSetSection(I)V

    .line 108
    .end local v0    # "i":I
    .end local v1    # "offset":I
    goto :goto_4

    .line 109
    :cond_1
    const/16 v0, 0xb

    .line 110
    .restart local v0    # "i":I
    iget v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->focusGravity:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->showCount:I

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, 0x1a

    sub-int/2addr v1, v0

    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_3

    :cond_2
    rsub-int/lit8 v1, v0, 0x1a

    goto :goto_2

    .line 111
    .restart local v1    # "offset":I
    :goto_3
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setSelection(I)V

    .line 112
    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->postSetSection(I)V

    .line 114
    .end local v0    # "i":I
    .end local v1    # "offset":I
    :goto_4
    return-void
.end method


# virtual methods
.method public build()V
    .locals 2

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setDividerHeight(I)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setVerticalScrollBarEnabled(Z)V

    .line 119
    new-instance v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->showCount:I

    invoke-direct {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->numAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;

    .line 120
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->numAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    invoke-direct {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setDefaultSelectNum()V

    .line 122
    new-instance v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;

    invoke-direct {v0, p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$2;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;)V

    invoke-virtual {p0, v0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 168
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 79
    nop

    .line 83
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getSelectItemString()C
    .locals 3

    .line 70
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->focusGravity:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->numAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->mFirstVisibleItem:I

    iget v2, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->showCount:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;->getItem(I)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->numAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;

    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->mFirstVisibleItem:I

    .line 71
    invoke-virtual {v0, v1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;->getItem(I)Ljava/lang/Character;

    move-result-object v0

    .line 70
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public setDefaultItemNum(C)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
    .locals 1
    .param p1, "c"    # C

    .line 87
    add-int/lit8 v0, p1, -0x41

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->mDefaultSelectNum:I

    .line 88
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->numAdapter:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->setDefaultSelectNum()V

    .line 91
    :cond_0
    return-object p0
.end method

.method public setFocusGravity(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
    .locals 0
    .param p1, "focusGravity"    # I

    .line 60
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->focusGravity:I

    .line 61
    return-object p0
.end method

.method public setNormalItemColor(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
    .locals 0
    .param p1, "normalColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 55
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->normalColor:I

    .line 56
    return-object p0
.end method

.method public setSelectItemColor(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
    .locals 0
    .param p1, "selectColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 50
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->selectColor:I

    .line 51
    return-object p0
.end method

.method public setSelectListener(Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
    .locals 0
    .param p1, "selectListener"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;

    .line 65
    iput-object p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->selectListener:Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$OnSelectListener;

    .line 66
    return-object p0
.end method

.method public setShowCount(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
    .locals 0
    .param p1, "count"    # I

    .line 45
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;->showCount:I

    .line 46
    return-object p0
.end method
