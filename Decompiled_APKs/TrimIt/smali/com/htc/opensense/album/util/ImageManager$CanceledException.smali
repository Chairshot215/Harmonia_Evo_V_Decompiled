.class public Lcom/htc/opensense/album/util/ImageManager$CanceledException;
.super Ljava/lang/Exception;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CanceledException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2293
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$CanceledException;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
