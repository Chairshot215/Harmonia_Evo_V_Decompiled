.class public Landroid/media/MediaVT;
.super Ljava/lang/Object;
.source "MediaVT.java"


# static fields
.field public static final DUMMY_VIEW:Z

.field public static final STE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/MediaVT;->STE:Z

    sget-boolean v0, Landroid/media/MediaVT;->STE:Z

    sput-boolean v0, Landroid/media/MediaVT;->DUMMY_VIEW:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
