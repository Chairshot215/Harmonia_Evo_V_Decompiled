.class interface abstract Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;
.super Ljava/lang/Object;
.source "LegacyApiSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyApiSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IdQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
