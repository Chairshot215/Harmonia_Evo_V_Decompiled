.class public final Lcom/android/providers/contacts/ContactsDatabaseHelper$SearchIndexColumns;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchIndexColumns"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final TOKENS:Ljava/lang/String; = "tokens"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 678
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
