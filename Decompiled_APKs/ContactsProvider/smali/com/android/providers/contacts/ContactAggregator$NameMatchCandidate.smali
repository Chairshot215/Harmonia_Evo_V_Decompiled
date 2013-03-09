.class Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameMatchCandidate"
.end annotation


# instance fields
.field mLookupType:I

.field mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "nameLookupType"

    .prologue
    .line 240
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    .line 242
    iput p2, p0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mLookupType:I

    .line 243
    return-void
.end method
