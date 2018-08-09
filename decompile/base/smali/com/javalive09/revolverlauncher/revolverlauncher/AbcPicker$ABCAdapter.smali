.class final Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;
.super Landroid/widget/BaseAdapter;
.source "AbcPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ABCAdapter"
.end annotation


# instance fields
.field private showCount:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "showCount"    # I

    .line 174
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 175
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;->showCount:I

    .line 176
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 180
    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Character;
    .locals 1
    .param p1, "position"    # I

    .line 185
    rem-int/lit8 v0, p1, 0x1a

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;->getItem(I)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 190
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 195
    if-nez p2, :cond_0

    .line 196
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 197
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 198
    .local v0, "listViewH":I
    if-lez v0, :cond_0

    .line 199
    iget v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;->showCount:I

    div-int v1, v0, v1

    .line 200
    .local v1, "cell":I
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 201
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 203
    .local v3, "parentLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v4, v1, :cond_0

    .line 204
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .end local v0    # "listViewH":I
    .end local v1    # "cell":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parentLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AbcPicker$ABCAdapter;->getItem(I)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "abc":Ljava/lang/String;
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-object p2
.end method
