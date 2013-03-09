.class Lcom/android/defcontainer/DefaultContainerService$1;
.super Lcom/android/internal/app/IMediaContainerService$Stub;
.source "DefaultContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/defcontainer/DefaultContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/defcontainer/DefaultContainerService;


# direct methods
.method constructor <init>(Lcom/android/defcontainer/DefaultContainerService;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-direct {p0}, Lcom/android/internal/app/IMediaContainerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateDirectorySize(Ljava/lang/String;)J
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-static {p1}, Lcom/android/defcontainer/MeasurementUtils;->measureDirectory(Ljava/lang/String;)J

    move-result-wide v1

    .line 203
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public checkExternalFreeStorage(Landroid/net/Uri;)Z
    .locals 3
    .parameter "packageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, apkFile:Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    #calls: Lcom/android/defcontainer/DefaultContainerService;->isUnderExternalThreshold(Ljava/io/File;)Z
    invoke-static {v2, v0}, Lcom/android/defcontainer/DefaultContainerService;->access$400(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 184
    :goto_0
    return v2

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkInternalFreeStorage(Landroid/net/Uri;J)Z
    .locals 3
    .parameter "packageUri"
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, apkFile:Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    #calls: Lcom/android/defcontainer/DefaultContainerService;->isUnderInternalThreshold(Ljava/io/File;J)Z
    invoke-static {v2, v0, p2, p3}, Lcom/android/defcontainer/DefaultContainerService;->access$300(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;J)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 174
    :goto_0
    return v2

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public copyResource(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .parameter "packageURI"
    .parameter "outStream"

    .prologue
    const/4 v2, -0x3

    .line 98
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v2

    .line 102
    :cond_1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 106
    .local v0, autoOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    #calls: Lcom/android/defcontainer/DefaultContainerService;->copyFile(Landroid/net/Uri;Ljava/io/OutputStream;)V
    invoke-static {v3, p1, v0}, Lcom/android/defcontainer/DefaultContainerService;->access$100(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    const/4 v2, 0x1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v3, "DefContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not copy URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FNF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 113
    .local v1, e:Ljava/io/IOException;
    const-string v2, "DefContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not copy URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packageURI"
    .parameter "cid"
    .parameter "key"
    .parameter "resFileName"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    #calls: Lcom/android/defcontainer/DefaultContainerService;->copyResourceInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/defcontainer/DefaultContainerService;->access$000(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMinimalPackageInfo(Landroid/net/Uri;IJ)Landroid/content/pm/PackageInfoLite;
    .locals 11
    .parameter "fileUri"
    .parameter "flags"
    .parameter "threshold"

    .prologue
    const/4 v4, -0x2

    .line 128
    new-instance v9, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v9}, Landroid/content/pm/PackageInfoLite;-><init>()V

    .line 129
    .local v9, ret:Landroid/content/pm/PackageInfoLite;
    if-nez p1, :cond_0

    .line 130
    const-string v0, "DefContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput v4, v9, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 164
    :goto_0
    return-object v9

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    const-string v0, "DefContainer"

    const-string v1, "Falling back to installing on internal storage only"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    iput v0, v9, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, archiveFilePath:Ljava/lang/String;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 142
    .local v7, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v7}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 144
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    .line 145
    .local v8, pkg:Landroid/content/pm/PackageParser$PackageLite;
    if-nez v8, :cond_3

    .line 146
    const-string v0, "DefContainer"

    const-string v1, "Failed to parse package"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v6, apkFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    const/4 v0, -0x6

    iput v0, v9, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    .line 152
    :cond_2
    iput v4, v9, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    .line 157
    .end local v6           #apkFile:Ljava/io/File;
    :cond_3
    iget-object v0, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iput-object v0, v9, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 158
    iget v0, v8, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    iput v0, v9, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 159
    iget-object v0, v8, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-object v0, v9, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 161
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    iget v1, v8, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    move v3, p2

    move-wide v4, p3

    #calls: Lcom/android/defcontainer/DefaultContainerService;->recommendAppInstallLocation(ILjava/lang/String;IJ)I
    invoke-static/range {v0 .. v5}, Lcom/android/defcontainer/DefaultContainerService;->access$200(Lcom/android/defcontainer/DefaultContainerService;ILjava/lang/String;IJ)I

    move-result v0

    iput v0, v9, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0
.end method

.method public getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .locals 4
    .parameter "filename"

    .prologue
    .line 190
    :try_start_0
    invoke-static {p1}, Landroid/content/res/ObbScanner;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    :goto_0
    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/io/IOException;
    const-string v1, "DefContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get OBB info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v1, 0x0

    goto :goto_0
.end method
