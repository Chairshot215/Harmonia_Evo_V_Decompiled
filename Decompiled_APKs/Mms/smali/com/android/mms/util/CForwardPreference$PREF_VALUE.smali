.class public Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
.super Ljava/lang/Object;
.source "MsgForwardHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CForwardPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PREF_VALUE"
.end annotation


# static fields
.field public static final FORAWRD_EMAIL_ADDRESS:I = 0x2

.field public static final FORWARD_PHONE_NUMBER:I = 0x1


# instance fields
.field bEnable:Z

.field nTimestamp:J

.field nType:I

.field strValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 892
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 896
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 897
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    .line 899
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    return-void
.end method
