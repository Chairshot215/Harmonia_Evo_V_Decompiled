.class public Lcom/android/htcdialer/util/DialerUtils$ExtraInfoForSelectedPhoneIntent;
.super Ljava/lang/Object;
.source "DialerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/util/DialerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraInfoForSelectedPhoneIntent"
.end annotation


# instance fields
.field bHasPhoto:Z

.field sId:Ljava/lang/String;

.field sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/util/DialerUtils$ExtraInfoForSelectedPhoneIntent;->sName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htcdialer/util/DialerUtils$ExtraInfoForSelectedPhoneIntent;->sId:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/util/DialerUtils$ExtraInfoForSelectedPhoneIntent;->bHasPhoto:Z

    .line 69
    return-void
.end method
