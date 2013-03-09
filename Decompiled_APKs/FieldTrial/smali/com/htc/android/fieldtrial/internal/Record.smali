.class public Lcom/htc/android/fieldtrial/internal/Record;
.super Ljava/lang/Object;
.source "Record.java"


# static fields
.field public static final STATE_FAILED:I = 0x1

.field public static final STATE_NOTSUPPORT:I = 0x2

.field public static final STATE_SUCCESS:I = 0x0

.field public static final TYPE_DMCMD:I = 0x1

.field public static final TYPE_NVITEM:I


# instance fields
.field public customAttr:Ljava/lang/String;

.field public dmCmdId:I

.field public failedstate:I

.field public index:I

.field public indexlen:I

.field public isResponse:Z

.field public isSend:Z

.field public laststatus:I

.field public name:Ljava/lang/String;

.field public nvitemId:I

.field public request:Lcom/htc/android/fieldtrial/internal/StructBase;

.field public response:Lcom/htc/android/fieldtrial/internal/StructBase;

.field public rule:Lcom/htc/android/fieldtrial/internal/IRule;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
