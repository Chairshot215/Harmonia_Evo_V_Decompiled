.class public Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailsEntry"
.end annotation


# instance fields
.field public contentText:Ljava/lang/CharSequence;

.field public detailedDescription:Ljava/lang/CharSequence;

.field public hasNewPermission:Z

.field public headerText:Ljava/lang/String;

.field public newContentText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
