.class public Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;
.super Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
.source "DM_GPS_INFO.java"


# instance fields
.field private CNO_1:Ljava/lang/String;

.field private CNO_2:Ljava/lang/String;

.field private CNO_3:Ljava/lang/String;

.field private CNO_4:Ljava/lang/String;

.field private CNO_5:Ljava/lang/String;

.field private CNO_6:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private altitude:Ljava/lang/String;

.field private doppler_1:Ljava/lang/String;

.field private doppler_2:Ljava/lang/String;

.field private doppler_3:Ljava/lang/String;

.field private doppler_4:Ljava/lang/String;

.field private doppler_5:Ljava/lang/String;

.field private doppler_6:Ljava/lang/String;

.field private ecio_1:Ljava/lang/String;

.field private ecio_2:Ljava/lang/String;

.field private ecio_3:Ljava/lang/String;

.field private ecio_4:Ljava/lang/String;

.field private ecio_5:Ljava/lang/String;

.field private ecio_6:Ljava/lang/String;

.field private heading:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private num_pilot:Ljava/lang/String;

.field private num_sats:Ljava/lang/String;

.field private phase_1:Ljava/lang/String;

.field private phase_2:Ljava/lang/String;

.field private phase_3:Ljava/lang/String;

.field private phase_4:Ljava/lang/String;

.field private phase_5:Ljava/lang/String;

.field private phase_6:Ljava/lang/String;

.field private pilot_time_offset:Ljava/lang/String;

.field private prn_num_1:Ljava/lang/String;

.field private prn_num_2:Ljava/lang/String;

.field private prn_num_3:Ljava/lang/String;

.field private prn_num_4:Ljava/lang/String;

.field private prn_num_5:Ljava/lang/String;

.field private prn_num_6:Ljava/lang/String;

.field private psrrErr_1:Ljava/lang/String;

.field private psrrErr_2:Ljava/lang/String;

.field private psrrErr_3:Ljava/lang/String;

.field private psrrErr_4:Ljava/lang/String;

.field private psrrErr_5:Ljava/lang/String;

.field private psrrErr_6:Ljava/lang/String;

.field private rmse_1:Ljava/lang/String;

.field private rmse_2:Ljava/lang/String;

.field private rmse_3:Ljava/lang/String;

.field private rmse_4:Ljava/lang/String;

.field private rmse_5:Ljava/lang/String;

.field private rmse_6:Ljava/lang/String;

.field private sv_time_offset:Ljava/lang/String;

.field private time_stamp:Ljava/lang/String;

.field private velocity_hor:Ljava/lang/String;

.field private velocity_ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;-><init>()V

    .line 8
    const-string v0, "DM_GPS_INFO"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->LOG_TAG:Ljava/lang/String;

    .line 9
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->velocity_ver:Ljava/lang/String;

    .line 10
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->velocity_hor:Ljava/lang/String;

    .line 11
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->latitude:Ljava/lang/String;

    .line 12
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->longitude:Ljava/lang/String;

    .line 13
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->time_stamp:Ljava/lang/String;

    .line 14
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->altitude:Ljava/lang/String;

    .line 15
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->heading:Ljava/lang/String;

    .line 16
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->num_sats:Ljava/lang/String;

    .line 17
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->sv_time_offset:Ljava/lang/String;

    .line 18
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_1:Ljava/lang/String;

    .line 19
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_1:Ljava/lang/String;

    .line 20
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_1:Ljava/lang/String;

    .line 21
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_1:Ljava/lang/String;

    .line 22
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_2:Ljava/lang/String;

    .line 23
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_2:Ljava/lang/String;

    .line 24
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_2:Ljava/lang/String;

    .line 25
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_2:Ljava/lang/String;

    .line 26
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_3:Ljava/lang/String;

    .line 27
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_3:Ljava/lang/String;

    .line 28
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_3:Ljava/lang/String;

    .line 29
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_3:Ljava/lang/String;

    .line 30
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_4:Ljava/lang/String;

    .line 31
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_4:Ljava/lang/String;

    .line 32
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_4:Ljava/lang/String;

    .line 33
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_4:Ljava/lang/String;

    .line 34
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_5:Ljava/lang/String;

    .line 35
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_5:Ljava/lang/String;

    .line 36
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_5:Ljava/lang/String;

    .line 37
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_5:Ljava/lang/String;

    .line 38
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_6:Ljava/lang/String;

    .line 39
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_6:Ljava/lang/String;

    .line 40
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_6:Ljava/lang/String;

    .line 41
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_6:Ljava/lang/String;

    .line 42
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->num_pilot:Ljava/lang/String;

    .line 43
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->pilot_time_offset:Ljava/lang/String;

    .line 44
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_1:Ljava/lang/String;

    .line 45
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_1:Ljava/lang/String;

    .line 46
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_1:Ljava/lang/String;

    .line 47
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_2:Ljava/lang/String;

    .line 48
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_2:Ljava/lang/String;

    .line 49
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_2:Ljava/lang/String;

    .line 50
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_3:Ljava/lang/String;

    .line 51
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_3:Ljava/lang/String;

    .line 52
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_3:Ljava/lang/String;

    .line 53
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_4:Ljava/lang/String;

    .line 54
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_4:Ljava/lang/String;

    .line 55
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_4:Ljava/lang/String;

    .line 56
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_5:Ljava/lang/String;

    .line 57
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_5:Ljava/lang/String;

    .line 58
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_5:Ljava/lang/String;

    .line 59
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_6:Ljava/lang/String;

    .line 60
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_6:Ljava/lang/String;

    .line 61
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public CNO_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_1:Ljava/lang/String;

    return-object v0
.end method

.method public CNO_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_2:Ljava/lang/String;

    return-object v0
.end method

.method public CNO_3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_3:Ljava/lang/String;

    return-object v0
.end method

.method public CNO_4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_4:Ljava/lang/String;

    return-object v0
.end method

.method public CNO_5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_5:Ljava/lang/String;

    return-object v0
.end method

.method public CNO_6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_6:Ljava/lang/String;

    return-object v0
.end method

.method public altitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->altitude:Ljava/lang/String;

    return-object v0
.end method

.method public doppler_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_1:Ljava/lang/String;

    return-object v0
.end method

.method public doppler_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_2:Ljava/lang/String;

    return-object v0
.end method

.method public doppler_3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_3:Ljava/lang/String;

    return-object v0
.end method

.method public doppler_4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_4:Ljava/lang/String;

    return-object v0
.end method

.method public doppler_5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_5:Ljava/lang/String;

    return-object v0
.end method

.method public doppler_6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_6:Ljava/lang/String;

    return-object v0
.end method

.method public ecio_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_1:Ljava/lang/String;

    return-object v0
.end method

.method public ecio_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_2:Ljava/lang/String;

    return-object v0
.end method

.method public ecio_3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_3:Ljava/lang/String;

    return-object v0
.end method

.method public ecio_4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_4:Ljava/lang/String;

    return-object v0
.end method

.method public ecio_5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_5:Ljava/lang/String;

    return-object v0
.end method

.method public ecio_6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_6:Ljava/lang/String;

    return-object v0
.end method

.method public heading()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->heading:Ljava/lang/String;

    return-object v0
.end method

.method public latitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public longitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public num_pilot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->num_pilot:Ljava/lang/String;

    return-object v0
.end method

.method public num_sats()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->num_sats:Ljava/lang/String;

    return-object v0
.end method

.method public phase_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_1:Ljava/lang/String;

    return-object v0
.end method

.method public phase_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_2:Ljava/lang/String;

    return-object v0
.end method

.method public phase_3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_3:Ljava/lang/String;

    return-object v0
.end method

.method public phase_4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_4:Ljava/lang/String;

    return-object v0
.end method

.method public phase_5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_5:Ljava/lang/String;

    return-object v0
.end method

.method public phase_6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_6:Ljava/lang/String;

    return-object v0
.end method

.method public pilot_time_offset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->pilot_time_offset:Ljava/lang/String;

    return-object v0
.end method

.method public prn_num_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_1:Ljava/lang/String;

    return-object v0
.end method

.method public prn_num_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_2:Ljava/lang/String;

    return-object v0
.end method

.method public prn_num_3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_3:Ljava/lang/String;

    return-object v0
.end method

.method public prn_num_4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_4:Ljava/lang/String;

    return-object v0
.end method

.method public prn_num_5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_5:Ljava/lang/String;

    return-object v0
.end method

.method public prn_num_6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_6:Ljava/lang/String;

    return-object v0
.end method

.method public psrrErr_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_1:Ljava/lang/String;

    return-object v0
.end method

.method public psrrErr_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_2:Ljava/lang/String;

    return-object v0
.end method

.method public psrrErr_3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_3:Ljava/lang/String;

    return-object v0
.end method

.method public psrrErr_4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_4:Ljava/lang/String;

    return-object v0
.end method

.method public psrrErr_5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_5:Ljava/lang/String;

    return-object v0
.end method

.method public psrrErr_6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_6:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/16 v6, 0x16

    const/16 v5, 0xe

    const/4 v4, 0x6

    const/4 v3, 0x2

    .line 292
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf6

    if-eq v1, v2, :cond_0

    .line 293
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0XD8.mCmdToBeParsed.length()!=246:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v0

    .line 304
    .local v0, parser:Lcom/htc/android/fieldtrial/internal/CmdParser;
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->velocity_ver:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->velocity_hor:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->latitude:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v6}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->longitude:Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v6, v7}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->time_stamp:Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v7, v2}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->altitude:Ljava/lang/String;

    .line 335
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x22

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->heading:Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x26

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->num_sats:Ljava/lang/String;

    .line 345
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x2a

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->sv_time_offset:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x2e

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_1:Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x30

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_1:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x32

    const/16 v3, 0x36

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_1:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x36

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_1:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x3e

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_2:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x40

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_2:Ljava/lang/String;

    .line 382
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x42

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_2:Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x46

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_2:Ljava/lang/String;

    .line 393
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x4e

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_3:Ljava/lang/String;

    .line 398
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x50

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_3:Ljava/lang/String;

    .line 403
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x52

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_3:Ljava/lang/String;

    .line 409
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x56

    const/16 v3, 0x5e

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_3:Ljava/lang/String;

    .line 414
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x5e

    const/16 v3, 0x60

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_4:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x60

    const/16 v3, 0x62

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_4:Ljava/lang/String;

    .line 424
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x62

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_4:Ljava/lang/String;

    .line 430
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x66

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_4:Ljava/lang/String;

    .line 435
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x6e

    const/16 v3, 0x70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_5:Ljava/lang/String;

    .line 440
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x70

    const/16 v3, 0x72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_5:Ljava/lang/String;

    .line 445
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x72

    const/16 v3, 0x76

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_5:Ljava/lang/String;

    .line 451
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x76

    const/16 v3, 0x7e

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_5:Ljava/lang/String;

    .line 456
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x7e

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->prn_num_6:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x80

    const/16 v3, 0x82

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->CNO_6:Ljava/lang/String;

    .line 466
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x82

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->doppler_6:Ljava/lang/String;

    .line 472
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x86

    const/16 v3, 0x8e

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->psrrErr_6:Ljava/lang/String;

    .line 477
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x8e

    const/16 v3, 0x92

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->num_pilot:Ljava/lang/String;

    .line 482
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x92

    const/16 v3, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->pilot_time_offset:Ljava/lang/String;

    .line 489
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x96

    const/16 v3, 0x9e

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_1:Ljava/lang/String;

    .line 495
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x9e

    const/16 v3, 0xa2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_1:Ljava/lang/String;

    .line 501
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xa2

    const/16 v3, 0xa6

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_1:Ljava/lang/String;

    .line 506
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xa6

    const/16 v3, 0xae

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_2:Ljava/lang/String;

    .line 512
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xae

    const/16 v3, 0xb2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_2:Ljava/lang/String;

    .line 518
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xb2

    const/16 v3, 0xb6

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_2:Ljava/lang/String;

    .line 523
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xb6

    const/16 v3, 0xbe

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_3:Ljava/lang/String;

    .line 529
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xbe

    const/16 v3, 0xc2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_3:Ljava/lang/String;

    .line 535
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xc2

    const/16 v3, 0xc6

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_3:Ljava/lang/String;

    .line 540
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xc6

    const/16 v3, 0xce

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_4:Ljava/lang/String;

    .line 546
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xce

    const/16 v3, 0xd2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_4:Ljava/lang/String;

    .line 552
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xd2

    const/16 v3, 0xd6

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_4:Ljava/lang/String;

    .line 557
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xd6

    const/16 v3, 0xde

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_5:Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xde

    const/16 v3, 0xe2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_5:Ljava/lang/String;

    .line 569
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xe2

    const/16 v3, 0xe6

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_5:Ljava/lang/String;

    .line 574
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xe6

    const/16 v3, 0xee

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->phase_6:Ljava/lang/String;

    .line 580
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xee

    const/16 v3, 0xf2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->ecio_6:Ljava/lang/String;

    .line 586
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0xf2

    const/16 v3, 0xf6

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_6:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public rmse_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_1:Ljava/lang/String;

    return-object v0
.end method

.method public rmse_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_2:Ljava/lang/String;

    return-object v0
.end method

.method public rmse_3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_3:Ljava/lang/String;

    return-object v0
.end method

.method public rmse_4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_4:Ljava/lang/String;

    return-object v0
.end method

.method public rmse_5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_5:Ljava/lang/String;

    return-object v0
.end method

.method public rmse_6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->rmse_6:Ljava/lang/String;

    return-object v0
.end method

.method public sv_time_offset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->sv_time_offset:Ljava/lang/String;

    return-object v0
.end method

.method public time_stamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->time_stamp:Ljava/lang/String;

    return-object v0
.end method

.method public velocity_hor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->velocity_hor:Ljava/lang/String;

    return-object v0
.end method

.method public velocity_ver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_GPS_INFO;->velocity_ver:Ljava/lang/String;

    return-object v0
.end method
