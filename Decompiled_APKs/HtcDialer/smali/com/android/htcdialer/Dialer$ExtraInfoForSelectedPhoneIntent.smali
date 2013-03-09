.class Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;
.super Ljava/lang/Object;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtraInfoForSelectedPhoneIntent"
.end annotation


# instance fields
.field bHasPhoto:Z

.field sId:Ljava/lang/String;

.field sName:Ljava/lang/String;

.field sNumber:Ljava/lang/String;

.field sNumberType:I

.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 7180
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7181
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sId:Ljava/lang/String;

    .line 7185
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->bHasPhoto:Z

    .line 7186
    iput v1, p0, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sNumberType:I

    .line 7187
    return-void
.end method
