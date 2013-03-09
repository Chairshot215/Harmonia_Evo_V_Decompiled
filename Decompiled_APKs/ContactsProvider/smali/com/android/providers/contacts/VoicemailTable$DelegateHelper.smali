.class public interface abstract Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;
.super Ljava/lang/Object;
.source "VoicemailTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/VoicemailTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DelegateHelper"
.end annotation


# virtual methods
.method public abstract checkAndAddSourcePackageIntoValues(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
.end method

.method public abstract openDataFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
