.class public Lcom/google/wireless/gdata2/ConflictDetectedException;
.super Lcom/google/wireless/gdata2/GDataException;
.source "ConflictDetectedException.java"


# instance fields
.field private final conflictingEntry:Lcom/google/wireless/gdata2/data/Entry;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 0
    .parameter "conflictingEntry"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/wireless/gdata2/GDataException;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/wireless/gdata2/ConflictDetectedException;->conflictingEntry:Lcom/google/wireless/gdata2/data/Entry;

    .line 24
    return-void
.end method
