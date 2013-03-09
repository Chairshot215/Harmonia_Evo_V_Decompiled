.class Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;
.super Ljava/lang/Object;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Workaround"
.end annotation


# instance fields
.field private isSet:Z

.field private list:Lcom/htc/sunny2/IMediaList;

.field private selectedIndex:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    .line 229
    return-void
.end method


# virtual methods
.method public isComplete()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lcom/htc/sunny2/IMediaList;I)V
    .locals 1
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->list:Lcom/htc/sunny2/IMediaList;

    .line 233
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->selectedIndex:I

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    .line 235
    return-void
.end method

.method public setMediaListIRT_Workaround()V
    .locals 3

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->list:Lcom/htc/sunny2/IMediaList;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->selectedIndex:I

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaList(Lcom/htc/sunny2/IMediaList;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$000(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/IMediaList;I)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isSet:Z

    .line 247
    :cond_0
    return-void
.end method
