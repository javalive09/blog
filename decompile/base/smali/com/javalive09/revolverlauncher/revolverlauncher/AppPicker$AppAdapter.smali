.class final Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppAdapter"
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;",
            ">;"
        }
    .end annotation
.end field

.field private padding:I

.field private showCount:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "showCount"    # I

    .line 202
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->data:Ljava/util/ArrayList;

    .line 203
    iput p1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->showCount:I

    .line 204
    return-void
.end method

.method static synthetic access$100(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 196
    invoke-direct {p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->refreshData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private refreshData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;>;"
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->notifyDataSetChanged()V

    .line 212
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 220
    const v0, 0x7fffffff

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;
    .locals 2
    .param p1, "position"    # I

    .line 225
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->getItem(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 230
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 235
    iget v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->padding:I

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->padding:I

    .line 239
    :cond_0
    const v0, 0x7f070020

    if-nez p2, :cond_1

    .line 240
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f09001d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 241
    new-instance v1, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;-><init>(Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$1;)V

    .line 242
    .local v1, "holder":Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;
    const v2, 0x7f07003d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;->icon:Landroid/widget/ImageView;

    .line 243
    const v2, 0x7f070044

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;->label:Landroid/widget/TextView;

    .line 244
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 246
    .end local v1    # "holder":Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;

    .line 248
    .local v0, "holder":Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 249
    .local v1, "listViewH":I
    if-lez v1, :cond_3

    .line 250
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->showCount:I

    div-int v3, v1, v3

    iget v4, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->showCount:I

    div-int v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v3, v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;->icon:Landroid/widget/ImageView;

    iget v4, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->padding:I

    iget v5, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->padding:I

    iget v6, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->padding:I

    iget v7, p0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->padding:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$AppAdapter;->getItem(I)Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;

    move-result-object v3

    .line 255
    .local v3, "appModel":Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;
    if-eqz v3, :cond_2

    .line 256
    iget-object v4, v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v3}, Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 258
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Lcom/javalive09/revolverlauncher/revolverlauncher/AppPicker$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 262
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "appModel":Lcom/javalive09/revolverlauncher/revolverlauncher/AppModel;
    :cond_3
    return-object p2
.end method
