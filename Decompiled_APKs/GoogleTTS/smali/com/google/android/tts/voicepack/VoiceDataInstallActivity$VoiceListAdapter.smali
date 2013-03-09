.class final Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "VoiceDataInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VoiceListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;


# direct methods
.method constructor <init>(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #getter for: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceList:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$100(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #getter for: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceList:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$100(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 152
    if-eqz p2, :cond_0

    .line 153
    move-object/from16 v5, p2

    .line 157
    .local v5, view:Landroid/view/View;
    :goto_0
    const v7, 0x7f070003

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    .local v3, text1:Landroid/widget/TextView;
    const v7, 0x7f070004

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 159
    .local v4, text2:Landroid/widget/TextView;
    const v7, 0x7f070005

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 160
    .local v1, actionButton:Landroid/widget/Button;
    iget-object v7, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #getter for: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceList:Ljava/util/List;
    invoke-static {v7}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$100(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    .line 162
    .local v6, voice:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    iget-object v7, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #calls: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->formatText1(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$200(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v7, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #getter for: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;
    invoke-static {v7}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$300(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Lcom/google/android/tts/voicepack/VoiceDataManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/tts/voicepack/VoiceDataManager;->getAvailablePicoLocales()Ljava/util/Set;

    move-result-object v2

    .line 165
    .local v2, installedLocales:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    iget-object v7, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    const v8, 0x7f060010

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    iget-object v12, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #getter for: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;
    invoke-static {v12}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$300(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Lcom/google/android/tts/voicepack/VoiceDataManager;

    move-result-object v12

    invoke-virtual {v6}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/tts/voicepack/VoiceDataManager;->getInstalledSize(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const v7, 0x7f06000e

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 172
    new-instance v7, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$1;

    invoke-direct {v7, p0, v6}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$1;-><init>(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :goto_1
    return-object v5

    .line 155
    .end local v1           #actionButton:Landroid/widget/Button;
    .end local v2           #installedLocales:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #text1:Landroid/widget/TextView;
    .end local v4           #text2:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    .end local v6           #voice:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    :cond_0
    iget-object v7, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f020001

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .restart local v5       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 178
    .restart local v1       #actionButton:Landroid/widget/Button;
    .restart local v2       #installedLocales:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3       #text1:Landroid/widget/TextView;
    .restart local v4       #text2:Landroid/widget/TextView;
    .restart local v6       #voice:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    :cond_1
    iget-object v7, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #getter for: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;
    invoke-static {v7}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$500(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->isActiveDownload(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 180
    const v7, 0x7f06000b

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 181
    const v7, 0x7f06000d

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 182
    new-instance v7, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$2;

    invoke-direct {v7, p0, v6}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$2;-><init>(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 191
    :cond_2
    iget-object v7, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->this$0:Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;

    #calls: Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->formatText2(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->access$600(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const v7, 0x7f06000f

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 193
    new-instance v7, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$3;

    invoke-direct {v7, p0, v6}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter$3;-><init>(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method
