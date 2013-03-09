.class abstract Lcom/htc/painting/engine/ViewPort$PaintingViewport;
.super Lcom/htc/painting/engine/ViewPort;
.source "ViewPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/ViewPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PaintingViewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/ViewPort$PaintingViewport$OnViewportListener;
    }
.end annotation


# static fields
.field public static final OFFSET_X:Ljava/lang/String; = "_offset_x"

.field public static final OFFSET_Y:Ljava/lang/String; = "_offset_y"

.field public static final ORIGIN_X:Ljava/lang/String; = "_origin_x"

.field public static final ORIGIN_Y:Ljava/lang/String; = "_origin_y"

.field public static final SCALE_X:Ljava/lang/String; = "_scale_x"

.field public static final SCALE_Y:Ljava/lang/String; = "_scale_y"


# instance fields
.field protected mListener:Lcom/htc/painting/engine/ViewPort$PaintingViewport$OnViewportListener;

.field private mModifiedTime:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/painting/engine/ViewPort;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/ViewPort$PaintingViewport;->mListener:Lcom/htc/painting/engine/ViewPort$PaintingViewport$OnViewportListener;

    .line 125
    return-void
.end method


# virtual methods
.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/htc/painting/engine/ViewPort$PaintingViewport;->mModifiedTime:J

    return-wide v0
.end method

.method public setModificationTime(J)V
    .locals 0
    .parameter "newTime"

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/htc/painting/engine/ViewPort$PaintingViewport;->mModifiedTime:J

    .line 139
    return-void
.end method

.method public setViewportListener(Lcom/htc/painting/engine/ViewPort$PaintingViewport$OnViewportListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/painting/engine/ViewPort$PaintingViewport;->mListener:Lcom/htc/painting/engine/ViewPort$PaintingViewport$OnViewportListener;

    .line 132
    return-void
.end method
