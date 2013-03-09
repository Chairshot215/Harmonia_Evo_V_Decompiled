.class public Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;
.super Ljava/lang/Object;
.source "LinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/LinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReturnSuggests"
.end annotation


# instance fields
.field public mContactsHasSuggest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCount:I

.field public mInnerContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 342
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mCount:I

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mContactsHasSuggest:Ljava/util/ArrayList;

    .line 345
    iget-object v0, p0, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mContactsHasSuggest:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 346
    return-void
.end method
