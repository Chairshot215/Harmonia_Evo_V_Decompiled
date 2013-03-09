.class public Lcom/android/common/contacts/DataUsageStatUpdater;
.super Ljava/lang/Object;
.source "DataUsageStatUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/contacts/DataUsageStatUpdater$DataUsageFeedback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/common/contacts/DataUsageStatUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    return-void
.end method
