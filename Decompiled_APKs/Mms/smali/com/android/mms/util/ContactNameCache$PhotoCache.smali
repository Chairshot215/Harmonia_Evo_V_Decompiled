.class Lcom/android/mms/util/ContactNameCache$PhotoCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "ContactNameCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ContactNameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/mms/util/AbstractCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x12c

.field private static final serialVersionUID:J = 0x132b7f7L


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ContactNameCache;


# direct methods
.method private constructor <init>(Lcom/android/mms/util/ContactNameCache;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/mms/util/ContactNameCache$PhotoCache;->this$0:Lcom/android/mms/util/ContactNameCache;

    .line 98
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/google/android/mms/util/AbstractCache;-><init>(I)V

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/ContactNameCache;Lcom/android/mms/util/ContactNameCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/mms/util/ContactNameCache$PhotoCache;-><init>(Lcom/android/mms/util/ContactNameCache;)V

    return-void
.end method
