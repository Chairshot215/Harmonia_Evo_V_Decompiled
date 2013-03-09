.class public Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupIdCacheEntry"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field dataSet:Ljava/lang/String;

.field groupId:J

.field sourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1580
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
