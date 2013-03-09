.class public final Lcom/htc/provider/IccContract$IccPhonebook;
.super Ljava/lang/Object;
.source "IccContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/IccContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IccPhonebook"
.end annotation


# static fields
.field public static final RECORD_COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final RECORD_COLUMN_RECORD:I = 0x0

.field public static final RECORD_NUMBER:Ljava/lang/String; = "recordNumber"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "recordNumber"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/provider/IccContract$IccPhonebook;->RECORD_COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
