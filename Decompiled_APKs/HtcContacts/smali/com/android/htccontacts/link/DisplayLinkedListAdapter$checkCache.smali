.class Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;
.super Ljava/lang/Object;
.source "DisplayLinkedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplayLinkedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "checkCache"
.end annotation


# instance fields
.field public Id:J

.field public curPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;->Id:J

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListAdapter$checkCache;->curPos:I

    .line 113
    return-void
.end method
