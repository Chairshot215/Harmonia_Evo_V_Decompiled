.class public Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/receivers/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallerProgressReport"
.end annotation


# instance fields
.field public final bytesCompleted:J

.field public final bytesTotal:J

.field public final downloadStatus:I

.field public final installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V
    .locals 0
    .parameter "installerState"
    .parameter "bytesCompleted"
    .parameter "bytesTotal"
    .parameter "downloadStatus"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    .line 137
    iput-wide p2, p0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesCompleted:J

    .line 138
    iput-wide p4, p0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesTotal:J

    .line 139
    iput p6, p0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->downloadStatus:I

    .line 140
    return-void
.end method
