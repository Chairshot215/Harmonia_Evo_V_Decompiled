.class public Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSearchResult;
.super Ljava/lang/Object;
.source "EASSyncCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASSyncCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EASMailSearchResult"
.end annotation


# instance fields
.field public mailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            ">;"
        }
    .end annotation
.end field

.field public range:Ljava/lang/String;

.field public searchStatus:I

.field public status:I

.field public storeStatus:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 731
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSearchResult;->total:I

    .line 733
    iput v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSearchResult;->status:I

    .line 734
    iput v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSearchResult;->searchStatus:I

    .line 735
    iput v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSearchResult;->storeStatus:I

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSearchResult;->range:Ljava/lang/String;

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSearchResult;->mailList:Ljava/util/ArrayList;

    return-void
.end method
