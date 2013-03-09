.class public Lcom/futuredial/PBAPReadThread;
.super Lcom/futuredial/ObexReadThread;
.source "PBAPReadThread.java"


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 0
    .parameter "tParam"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/futuredial/ObexReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected chooseChildModule(I)Lcom/futuredial/obex/OBEX_SNE;
    .locals 1
    .parameter "contentType"

    .prologue
    .line 17
    new-instance v0, Lcom/futuredial/obex/OBEX_PBAP;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_PBAP;-><init>()V

    return-object v0
.end method
