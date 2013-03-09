.class Lcom/android/mms/util/IddUtils$MCCIDD;
.super Ljava/lang/Object;
.source "IddUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/IddUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MCCIDD"
.end annotation


# instance fields
.field public idd:Ljava/lang/String;

.field public mcc:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/IddUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/mms/util/IddUtils$MCCIDD;-><init>()V

    return-void
.end method
