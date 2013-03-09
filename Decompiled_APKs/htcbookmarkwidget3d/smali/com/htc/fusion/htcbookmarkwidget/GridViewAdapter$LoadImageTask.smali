.class Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Lcom/htc/fusion/htcbookmarkwidget/util/IImage;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;

.field private mList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;

.field private mPosition:I


# direct methods
.method public constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;)V
    .locals 1
    .parameter "adapter"
    .parameter "list"

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 170
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;

    .line 171
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mPosition:I

    .line 175
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;

    .line 176
    iput-object p2, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;

    .line 177
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .locals 4
    .parameter "params"

    .prologue
    .line 180
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mPosition:I

    .line 181
    iget v2, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mPosition:I

    if-ltz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;

    iget v3, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 183
    .local v0, bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;

    invoke-interface {v2, v1}, Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;->getImage(Ljava/lang/String;)Lcom/htc/fusion/htcbookmarkwidget/util/IImage;

    move-result-object v2

    .line 186
    .end local v0           #bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    .end local v1           #url:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->doInBackground([Ljava/lang/Integer;)Lcom/htc/fusion/htcbookmarkwidget/util/IImage;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/fusion/htcbookmarkwidget/util/IImage;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 191
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mPosition:I

    if-ltz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;

    iget v2, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 193
    .local v0, bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {p1}, Lcom/htc/fusion/htcbookmarkwidget/util/IImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 194
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;

    iget v2, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->mPosition:I

    invoke-virtual {v1, v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->update(Ljava/lang/Object;I)V

    .line 196
    .end local v0           #bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    check-cast p1, Lcom/htc/fusion/htcbookmarkwidget/util/IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;->onPostExecute(Lcom/htc/fusion/htcbookmarkwidget/util/IImage;)V

    return-void
.end method
