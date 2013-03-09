.class public final Lcom/htc/util/phone/PhoneUtils$Project;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Project"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final VERSION_2_5:F = 2.5f

.field public static final VERSION_3_0:F = 3.0f

.field public static final VERSION_4_0:F = 4.0f

.field private static final mCurrentVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/htc/util/phone/PhoneUtils$Project;->computeVersion()F

    move-result v0

    sput v0, Lcom/htc/util/phone/PhoneUtils$Project;->mCurrentVersion:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeVersion()F
    .locals 4

    const/high16 v1, 0x4020

    const-string v2, "none"

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v2, 0x4000

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    const/high16 v1, 0x4080

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getVersion()F
    .locals 1

    sget v0, Lcom/htc/util/phone/PhoneUtils$Project;->mCurrentVersion:F

    return v0
.end method
