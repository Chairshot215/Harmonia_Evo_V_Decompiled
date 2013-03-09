.class public Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BrowseOnlineDirectoriesActivity.java"

# interfaces
.implements Lcom/htc/widget/InsertNewListAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnlineDirectoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;",
        ">;",
        "Lcom/htc/widget/InsertNewListAdapterInterface;"
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;Landroid/content/Context;II)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textId"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    .line 226
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 227
    invoke-virtual {p1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 228
    return-void
.end method


# virtual methods
.method public getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 247
    if-nez p1, :cond_0

    .line 249
    iget-object v2, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x2090071

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 250
    const v2, 0x2020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 251
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x7f0a0221

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 253
    const v2, 0x202001a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 254
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mDefaultCompanyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    .end local v0           #imageView:Landroid/widget/ImageView;
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 232
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, v:Landroid/view/View;
    const v3, 0x202001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 234
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;

    iget-object v0, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 235
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 236
    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_0
    :goto_0
    return-object v2

    .line 240
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v3, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mDefaultCompanyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onInsertViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 262
    return-void
.end method

.method public onInsertViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method
