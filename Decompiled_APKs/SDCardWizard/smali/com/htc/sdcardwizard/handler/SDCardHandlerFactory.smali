.class public Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory;
.super Ljava/lang/Object;
.source "SDCardHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static getCasper(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/CasperHandler;
    .locals 3
    .parameter "context"
    .parameter "categoryID"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    sget-object v1, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory$1;->$SwitchMap$com$htc$sdcardwizard$handler$CategoryID:[I

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/CategoryID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 115
    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    new-instance v0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;-><init>(Landroid/app/Activity;)V

    .line 77
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 79
    :pswitch_1
    new-instance v0, Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;-><init>(Landroid/app/Activity;)V

    .line 80
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 82
    :pswitch_2
    new-instance v0, Lcom/htc/sdcardwizard/handler/BrowserHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/BrowserHandler;-><init>(Landroid/app/Activity;)V

    .line 83
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 85
    :pswitch_3
    new-instance v0, Lcom/htc/sdcardwizard/handler/ExportedFootprintsHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/ExportedFootprintsHandler;-><init>(Landroid/app/Activity;)V

    .line 86
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 88
    :pswitch_4
    new-instance v0, Lcom/htc/sdcardwizard/handler/ExportedTripsHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/ExportedTripsHandler;-><init>(Landroid/app/Activity;)V

    .line 89
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 91
    :pswitch_5
    new-instance v0, Lcom/htc/sdcardwizard/handler/MusicHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/MusicHandler;-><init>(Landroid/app/Activity;)V

    .line 92
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 94
    :pswitch_6
    new-instance v0, Lcom/htc/sdcardwizard/handler/ShowMeHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/ShowMeHandler;-><init>(Landroid/app/Activity;)V

    .line 95
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 97
    :pswitch_7
    new-instance v0, Lcom/htc/sdcardwizard/handler/VoiceRecognitionHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/VoiceRecognitionHandler;-><init>(Landroid/app/Activity;)V

    .line 98
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 100
    :pswitch_8
    new-instance v0, Lcom/htc/sdcardwizard/handler/VoiceRecorderHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/VoiceRecorderHandler;-><init>(Landroid/app/Activity;)V

    .line 101
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 103
    :pswitch_9
    new-instance v0, Lcom/htc/sdcardwizard/handler/VoicesForLocationsHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/VoicesForLocationsHandler;-><init>(Landroid/app/Activity;)V

    .line 104
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 106
    :pswitch_a
    new-instance v0, Lcom/htc/sdcardwizard/handler/WallpaperHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/WallpaperHandler;-><init>(Landroid/app/Activity;)V

    .line 107
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 109
    :pswitch_b
    new-instance v0, Lcom/htc/sdcardwizard/handler/GalleryHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/GalleryHandler;-><init>(Landroid/app/Activity;)V

    .line 110
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 112
    :pswitch_c
    new-instance v0, Lcom/htc/sdcardwizard/handler/MapsHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/MapsHandler;-><init>(Landroid/app/Activity;)V

    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getCasperHandler(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/CasperHandler;
    .locals 4
    .parameter "context"
    .parameter "categoryID"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory;->getCasper(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/CasperHandler;

    move-result-object v0

    .line 56
    .local v0, handler:Lcom/htc/sdcardwizard/handler/CasperHandler;
    if-nez v0, :cond_0

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect category id for CapserHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    return-object v0
.end method

.method public static getHandler(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/SDCardHandler;
    .locals 4
    .parameter "context"
    .parameter "categoryID"

    .prologue
    .line 8
    const/4 v0, 0x0

    .line 9
    .local v0, handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    sget-object v1, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory$1;->$SwitchMap$com$htc$sdcardwizard$handler$CategoryID:[I

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/CategoryID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 35
    invoke-static {p0, p1}, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory;->getCasper(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/CasperHandler;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    invoke-static {p0, p1}, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory;->getPure(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/SDCardPureHandler;

    move-result-object v0

    .line 39
    :cond_0
    if-nez v0, :cond_1

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect category id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :pswitch_0
    new-instance v0, Lcom/htc/sdcardwizard/handler/AlarmSoundHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/AlarmSoundHandler;-><init>(Landroid/app/Activity;)V

    .line 43
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    :cond_1
    :goto_0
    return-object v0

    .line 14
    :pswitch_1
    new-instance v0, Lcom/htc/sdcardwizard/handler/FootprintsHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/FootprintsHandler;-><init>(Landroid/app/Activity;)V

    .line 15
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    goto :goto_0

    .line 17
    :pswitch_2
    new-instance v0, Lcom/htc/sdcardwizard/handler/NotificationSoundHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/NotificationSoundHandler;-><init>(Landroid/app/Activity;)V

    .line 18
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    goto :goto_0

    .line 20
    :pswitch_3
    new-instance v0, Lcom/htc/sdcardwizard/handler/RingtonesHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/RingtonesHandler;-><init>(Landroid/app/Activity;)V

    .line 21
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    goto :goto_0

    .line 23
    :pswitch_4
    new-instance v0, Lcom/htc/sdcardwizard/handler/WatchHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/WatchHandler;-><init>(Landroid/app/Activity;)V

    .line 24
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    goto :goto_0

    .line 26
    :pswitch_5
    new-instance v0, Lcom/htc/sdcardwizard/handler/TripsHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/TripsHandler;-><init>(Landroid/app/Activity;)V

    .line 27
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    goto :goto_0

    .line 29
    :pswitch_6
    new-instance v0, Lcom/htc/sdcardwizard/handler/SkinHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/SkinHandler;-><init>(Landroid/app/Activity;)V

    .line 30
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    goto :goto_0

    .line 32
    :pswitch_7
    new-instance v0, Lcom/htc/sdcardwizard/handler/ReaderHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/ReaderHandler;-><init>(Landroid/app/Activity;)V

    .line 33
    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/SDCardHandler;
    goto :goto_0

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getPure(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/SDCardPureHandler;
    .locals 3
    .parameter "context"
    .parameter "categoryID"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, handler:Lcom/htc/sdcardwizard/handler/SDCardPureHandler;
    sget-object v1, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory$1;->$SwitchMap$com$htc$sdcardwizard$handler$CategoryID:[I

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/CategoryID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    new-instance v0, Lcom/htc/sdcardwizard/handler/TemporaryFilesHandler;

    .end local v0           #handler:Lcom/htc/sdcardwizard/handler/SDCardPureHandler;
    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/handler/TemporaryFilesHandler;-><init>(Landroid/app/Activity;)V

    .restart local v0       #handler:Lcom/htc/sdcardwizard/handler/SDCardPureHandler;
    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static getPureHandler(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/SDCardPureHandler;
    .locals 4
    .parameter "context"
    .parameter "categoryID"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory;->getPure(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/SDCardPureHandler;

    move-result-object v0

    .line 48
    .local v0, handler:Lcom/htc/sdcardwizard/handler/SDCardPureHandler;
    if-nez v0, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect category id for SDCardPureHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    return-object v0
.end method
