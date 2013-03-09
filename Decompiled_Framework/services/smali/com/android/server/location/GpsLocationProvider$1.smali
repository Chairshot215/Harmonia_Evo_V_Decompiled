.class Lcom/android/server/location/GpsLocationProvider$1;
.super Landroid/telephony/PhoneStateListener;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 13

    const/4 v11, 0x3

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z
    invoke-static {v8, v9}, Lcom/android/server/location/GpsLocationProvider;->access$002(Lcom/android/server/location/GpsLocationProvider;Z)Z

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v8, "GpsLocationProvider"

    const-string v9, "ServiceState.STATE_IN_SERVICE\n"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSuplServerHost:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mSuplTlsHost:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FQDN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FQDN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    :try_start_0
    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_1
    const/4 v8, 0x4

    if-ge v1, v8, :cond_4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-nez v4, :cond_4

    :cond_3
    const-string v8, "GpsLocationProvider"

    const-string v9, "simOperator invalid, go to sleep 0.5 seconds "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "GpsLocationProvider"

    const-string v9, "InterruptedException was received "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v8, "GpsLocationProvider"

    const-string v9, "get FQDN Error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    :try_start_3
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMSI:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MCC:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MNC:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FQDN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v9, "h-slp.mnc%03d.mcc%03d.pub.3gppnetwork.org"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/location/GpsLocationProvider;->access$102(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    invoke-static {v11}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v11

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V
    invoke-static {v8, v9, v10, v11}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V

    :cond_6
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FQDN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v9, "h-slp.mnc%03d.mcc%03d.pub.3gppnetwork.org"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/location/GpsLocationProvider;->access$602(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    invoke-static {v11}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v11

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V
    invoke-static {v8, v9, v10, v11}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V

    :cond_7
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FQDN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v9, "h-slp.mnc%03d.mcc%03d.pub.3gppnetwork.org"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/location/GpsLocationProvider;->access$202(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_set_supl_tls_host(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
