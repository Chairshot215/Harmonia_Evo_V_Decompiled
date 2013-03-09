.class Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
.super Ljava/lang/Object;
.source "FilmstripViewChildItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SharedTexture"
.end annotation


# instance fields
.field corruptTexture:Lcom/htc/sunny2/Texture;

.field drmCorruptTexture:Lcom/htc/sunny2/Texture;

.field drmTexture:Lcom/htc/sunny2/Texture;

.field playableTexture:Lcom/htc/sunny2/Texture;

.field referenceCount:I

.field shadowTexture:Lcom/htc/sunny2/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field videoCorruptTexture:Lcom/htc/sunny2/Texture;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->this$0:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
