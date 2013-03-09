.class public abstract Lcom/google/android/gsf/GservicesValue;
.super Ljava/lang/Object;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/GservicesValue;->sContentResolver:Landroid/content/ContentResolver;

    return-void
.end method
