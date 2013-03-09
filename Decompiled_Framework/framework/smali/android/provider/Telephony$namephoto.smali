.class public Landroid/provider/Telephony$namephoto;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "namephoto"
.end annotation


# instance fields
.field public isFromSIM:Z

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mName:Ljava/lang/String;

.field public mPersonId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    return-void
.end method
