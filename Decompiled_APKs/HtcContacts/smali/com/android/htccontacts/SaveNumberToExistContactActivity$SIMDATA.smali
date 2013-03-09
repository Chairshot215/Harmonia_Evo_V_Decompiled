.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;
.super Ljava/lang/Object;
.source "SaveNumberToExistContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SIMDATA"
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public number1:Ljava/lang/String;

.field public recordnumber:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1270
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->name:Ljava/lang/String;

    .line 1272
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->number:Ljava/lang/String;

    .line 1273
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->number1:Ljava/lang/String;

    .line 1274
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->email:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1270
    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;-><init>()V

    return-void
.end method
