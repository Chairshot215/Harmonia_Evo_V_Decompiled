.class Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepAliveChecker"
.end annotation


# static fields
.field private static final INTERVAL:I = 0x12c

.field private static final INTERVALFAIL:I = 0x3c

.field private static final INTERVALSHUTDOWNFAIL:I = 0x258


# instance fields
.field private CurrentHostName:Ljava/lang/Integer;

.field private MyHostName:[Ljava/lang/String;

.field private MyInStream:Ljava/io/DataInputStream;

.field private MyOutStream:Ljava/io/DataOutputStream;

.field private MySocket:Ljava/net/Socket;

.field private MyTempString:Ljava/lang/String;

.field private TotalHostName:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1013
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MySocket:Ljava/net/Socket;

    .line 1018
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyOutStream:Ljava/io/DataOutputStream;

    .line 1019
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyInStream:Ljava/io/DataInputStream;

    .line 1020
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyTempString:Ljava/lang/String;

    .line 1021
    const/16 v0, 0x64

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    .line 1022
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->TotalHostName:Ljava/lang/Integer;

    .line 1023
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    return-void
.end method

.method private sendShutdownBroadcast()V
    .locals 3

    .prologue
    .line 1176
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/googlecode/android/wifi/tether/TetherService;->autoShutdown:Z

    .line 1179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    const-string v1, "state"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1182
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v1, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1183
    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 1026
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v14, v0, [J

    .line 1027
    .local v14, keepalive:[J
    const-wide/16 v15, 0x0

    .line 1028
    .local v15, nextCycle:J
    const/4 v6, 0x0

    .line 1030
    .local v6, Updatestring:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "keepalivecheckoptionpref"

    const-string v20, "karetry"

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1031
    .local v4, ShutDownPref:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "keepalivecheckwebsitespref"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v20, v0

    const v21, 0x7f070070

    invoke-virtual/range {v20 .. v21}, Lcom/googlecode/android/wifi/tether/TetherService;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1032
    .local v5, TempHostsString:Ljava/lang/String;
    new-instance v17, Ljava/util/StringTokenizer;

    const-string v18, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    .local v17, st:Ljava/util/StringTokenizer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "keepalivecheckprefcheckintervalshutdownpref"

    const-string v20, "10"

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1035
    .local v10, failShutdowntimerstring:Ljava/lang/String;
    const-string v18, "[^0-9]"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1036
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1037
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1038
    const/4 v6, 0x1

    .line 1040
    :cond_0
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide/16 v20, 0x3c

    mul-long v8, v18, v20

    .line 1041
    .local v8, failShutdowntimer:J
    const-string v18, ""

    move-object/from16 v0, v18

    if-eq v10, v0, :cond_1

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-nez v18, :cond_2

    .line 1042
    :cond_1
    const-wide/16 v8, 0x258

    .line 1043
    const-string v10, "10"

    .line 1044
    const/4 v6, 0x1

    .line 1046
    :cond_2
    if-eqz v6, :cond_3

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "keepalivecheckprefcheckintervalshutdownpref"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1051
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "keepalivecheckprefcheckintervalpref"

    const-string v20, "10"

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1052
    .local v13, intervaltimerstring:Ljava/lang/String;
    const-string v18, "[^0-9]"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1053
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 1054
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1055
    const/4 v6, 0x1

    .line 1057
    :cond_4
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide/16 v20, 0x3c

    mul-long v11, v18, v20

    .line 1058
    .local v11, intervaltimer:J
    const-string v18, ""

    move-object/from16 v0, v18

    if-eq v13, v0, :cond_5

    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-nez v18, :cond_6

    .line 1059
    :cond_5
    const-wide/16 v11, 0x12c

    .line 1060
    const-string v13, "5"

    .line 1061
    const/4 v6, 0x1

    .line 1063
    :cond_6
    if-eqz v6, :cond_7

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "keepalivecheckprefcheckintervalpref"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1069
    :cond_7
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->TotalHostName:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_9

    .line 1086
    const-string v18, "TetherService"

    const-string v19, "KeepAlive: Starting thread"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1172
    return-void

    .line 1071
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyTempString:Ljava/lang/String;

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->TotalHostName:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyTempString:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyTempString:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->TotalHostName:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyTempString:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->TotalHostName:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->TotalHostName:Ljava/lang/Integer;

    .line 1070
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-nez v18, :cond_8

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->TotalHostName:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-nez v18, :cond_7

    .line 1080
    new-instance v17, Ljava/util/StringTokenizer;

    .end local v17           #st:Ljava/util/StringTokenizer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    const v19, 0x7f070070

    invoke-virtual/range {v18 .. v19}, Lcom/googlecode/android/wifi/tether/TetherService;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, ";"

    invoke-direct/range {v17 .. v19}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    .restart local v17       #st:Ljava/util/StringTokenizer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "setup_layout_keepalive_websites_default"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v20, v0

    const v21, 0x7f070070

    invoke-virtual/range {v20 .. v21}, Lcom/googlecode/android/wifi/tether/TetherService;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1089
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v18, v18, v15

    if-ltz v18, :cond_f

    .line 1090
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "HEAD / HTTP/1.0\nHost: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\nUser-Agent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)\n\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, HTTPREQUEST:Ljava/lang/String;
    const/16 v18, 0x0

    aget-wide v18, v14, v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_b

    .line 1092
    const/16 v18, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    aput-wide v19, v14, v18

    .line 1094
    :cond_b
    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    aput-wide v19, v14, v18

    .line 1096
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MySocket:Ljava/net/Socket;

    .line 1097
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyOutStream:Ljava/io/DataOutputStream;

    .line 1098
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyInStream:Ljava/io/DataInputStream;

    .line 1099
    const/4 v3, 0x0

    .line 1100
    .local v3, MyReceivedData:Ljava/lang/String;
    const-string v18, "TetherService"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "KeepAlive: Connecting to host \""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :try_start_0
    new-instance v18, Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget-object v19, v19, v20

    const/16 v20, 0x50

    invoke-direct/range {v18 .. v20}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MySocket:Ljava/net/Socket;

    .line 1103
    new-instance v18, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MySocket:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyOutStream:Ljava/io/DataOutputStream;

    .line 1104
    new-instance v18, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MySocket:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyInStream:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1112
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MySocket:Ljava/net/Socket;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1114
    :try_start_1
    const-string v18, "TetherService"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "KeepAlive: Requesting header from \""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyOutStream:Ljava/io/DataOutputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1116
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyInStream:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    .line 1129
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyOutStream:Ljava/io/DataOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyInStream:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MySocket:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1139
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->TotalHostName:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_e

    .line 1141
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    .line 1142
    :cond_e
    const/16 v18, 0x0

    aget-wide v18, v14, v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_14

    .line 1143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v11

    add-long v15, v18, v20

    .line 1149
    .end local v2           #HTTPREQUEST:Ljava/lang/String;
    .end local v3           #MyReceivedData:Ljava/lang/String;
    :cond_f
    :goto_5
    const-string v18, "kashutdown"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1150
    const/16 v18, 0x0

    aget-wide v18, v14, v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_10

    .line 1151
    const/16 v18, 0x2

    const-wide/16 v19, 0x3e8

    mul-long v19, v19, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const/16 v23, 0x1

    aget-wide v23, v14, v23

    sub-long v21, v21, v23

    sub-long v19, v19, v21

    aput-wide v19, v14, v18

    .line 1152
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/16 v20, 0x1

    aget-wide v20, v14, v20

    sub-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v8

    cmp-long v18, v18, v20

    if-ltz v18, :cond_11

    .line 1153
    const-string v18, "TetherService"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Automatic Shutdown: Keep-alive unable to establish connection for "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v20, 0x3e8

    div-long v20, v8, v20

    const-wide/16 v22, 0x3c

    div-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " minute(s)."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "autoshutdownkeepalive"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v18 .. v18}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1156
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->sendShutdownBroadcast()V

    .line 1164
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/googlecode/android/wifi/tether/TetherService;->sendKeepAliveBroadcast([J)V

    .line 1167
    const-wide/16 v18, 0x3e8

    :try_start_2
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1168
    :catch_0
    move-exception v7

    .line 1169
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_1

    .line 1105
    .end local v7           #e:Ljava/lang/InterruptedException;
    .restart local v2       #HTTPREQUEST:Ljava/lang/String;
    .restart local v3       #MyReceivedData:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1106
    .local v7, e:Ljava/net/UnknownHostException;
    const-string v18, "TetherService"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "KeepAlive: Unable to connect to unknown host \""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/16 v18, 0x0

    const-wide/16 v19, 0x1

    aput-wide v19, v14, v18

    goto/16 :goto_2

    .line 1108
    .end local v7           #e:Ljava/net/UnknownHostException;
    :catch_2
    move-exception v7

    .line 1109
    .local v7, e:Ljava/io/IOException;
    const-string v18, "TetherService"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "KeepAlive: An I/O exception occured with connection to host \""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/16 v18, 0x0

    const-wide/16 v19, 0x1

    aput-wide v19, v14, v18

    goto/16 :goto_2

    .line 1118
    .end local v7           #e:Ljava/io/IOException;
    :cond_12
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_13

    .line 1119
    const-string v18, "TetherService"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "KeepAlive: Received response from \""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\" is \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    .line 1132
    :catch_3
    move-exception v7

    .line 1133
    .local v7, e:Ljava/net/UnknownHostException;
    const-string v18, "TetherService"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "KeepAlive: Unable to connect to unknown host \""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/16 v18, 0x0

    const-wide/16 v19, 0x1

    aput-wide v19, v14, v18

    goto/16 :goto_4

    .line 1123
    .end local v7           #e:Ljava/net/UnknownHostException;
    :cond_13
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/16 v20, 0x0

    aget-wide v20, v14, v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    sub-long v18, v18, v20

    const-wide/16 v20, 0x2

    cmp-long v18, v18, v20

    if-lez v18, :cond_c

    .line 1124
    const-string v18, "TetherService"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "KeepAlive: Host \""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->CurrentHostName:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\" timed out..."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/16 v18, 0x0

    const-wide/16 v19, 0x2

    aput-wide v19, v14, v18
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    .line 1135
    :catch_4
    move-exception v7

    .line 1136
    .local v7, e:Ljava/io/IOException;
    const-string v18, "TetherService"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "KeepAlive: An I/O exception occured with connection to host \""

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;->MyHostName:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/16 v18, 0x0

    const-wide/16 v19, 0x1

    aput-wide v19, v14, v18

    goto/16 :goto_4

    .line 1145
    .end local v7           #e:Ljava/io/IOException;
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0xea60

    add-long v15, v18, v20

    goto/16 :goto_5

    .line 1159
    .end local v2           #HTTPREQUEST:Ljava/lang/String;
    .end local v3           #MyReceivedData:Ljava/lang/String;
    :cond_15
    const/16 v18, 0x0

    aget-wide v18, v14, v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_11

    .line 1160
    const/16 v18, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const/16 v21, 0x1

    aget-wide v21, v14, v21

    sub-long v19, v19, v21

    aput-wide v19, v14, v18

    goto/16 :goto_6
.end method
