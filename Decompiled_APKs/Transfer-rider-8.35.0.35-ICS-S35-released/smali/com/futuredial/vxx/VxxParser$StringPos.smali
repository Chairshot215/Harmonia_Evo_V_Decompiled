.class public Lcom/futuredial/vxx/VxxParser$StringPos;
.super Ljava/lang/Object;
.source "VxxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/vxx/VxxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StringPos"
.end annotation


# instance fields
.field public miStrBegin:I

.field public miStrEnd:I

.field public miStrLen:I

.field final synthetic this$0:Lcom/futuredial/vxx/VxxParser;


# direct methods
.method public constructor <init>(Lcom/futuredial/vxx/VxxParser;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/futuredial/vxx/VxxParser$StringPos;->this$0:Lcom/futuredial/vxx/VxxParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p0}, Lcom/futuredial/vxx/VxxParser$StringPos;->ResetStrPos()V

    .line 223
    return-void
.end method


# virtual methods
.method public ResetStrPos()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 226
    iput v1, p0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrBegin:I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrLen:I

    .line 228
    iput v1, p0, Lcom/futuredial/vxx/VxxParser$StringPos;->miStrEnd:I

    .line 230
    return-void
.end method
