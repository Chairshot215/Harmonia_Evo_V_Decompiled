.class Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;
.super Ljava/lang/Object;
.source "DM_PILOT_SETS.java"


# instance fields
.field public PilotPN:Ljava/lang/String;

.field public PilotStrength:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotPN:Ljava/lang/String;

    .line 158
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotStrength:Ljava/lang/String;

    return-void
.end method
