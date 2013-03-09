.class public abstract Lcom/android/htccontacts/model/ContactsSource;
.super Lcom/android/htccontacts/model/AccountType;
.source "ContactsSource.java"


# static fields
.field public static final LEVEL_CONSTRAINTS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LEVEL_MIMETYPES:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LEVEL_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LEVEL_SUMMARY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountType;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized ensureInflated(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "inflateLevel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected inflate(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    .line 37
    return-void
.end method

.method public declared-synchronized invalidateCache()V
    .locals 0

    .prologue
    .line 41
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isInflated(I)Z
    .locals 1
    .parameter "inflateLevel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public setInflatedLevel(I)V
    .locals 0
    .parameter "inflateLevel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    return-void
.end method
