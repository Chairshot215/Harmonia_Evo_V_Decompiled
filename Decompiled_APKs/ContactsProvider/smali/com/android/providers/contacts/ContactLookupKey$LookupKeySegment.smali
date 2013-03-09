.class public Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
.super Ljava/lang/Object;
.source "ContactLookupKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactLookupKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookupKeySegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
        ">;"
    }
.end annotation


# instance fields
.field public accountHashCode:I

.field public contactId:J

.field public key:Ljava/lang/String;

.field public lookupType:I

.field public rawContactId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    iget-wide v2, p1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    const/4 v0, -0x1

    .line 51
    :goto_0
    return v0

    .line 48
    :cond_0
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    iget-wide v2, p1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->compareTo(Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;)I

    move-result v0

    return v0
.end method
