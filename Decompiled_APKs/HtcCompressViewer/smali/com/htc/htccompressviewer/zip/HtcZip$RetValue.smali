.class public Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
.super Ljava/lang/Object;
.source "HtcZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/zip/HtcZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RetValue"
.end annotation


# instance fields
.field public mFileName:Ljava/lang/String;

.field public mRetStatus:I

.field final synthetic this$0:Lcom/htc/htccompressviewer/zip/HtcZip;


# direct methods
.method public constructor <init>(Lcom/htc/htccompressviewer/zip/HtcZip;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->this$0:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
