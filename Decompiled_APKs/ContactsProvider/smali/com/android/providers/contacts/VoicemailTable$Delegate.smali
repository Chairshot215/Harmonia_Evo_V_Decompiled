.class public interface abstract Lcom/android/providers/contacts/VoicemailTable$Delegate;
.super Ljava/lang/Object;
.source "VoicemailTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/VoicemailTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract delete(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract getType(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;
.end method

.method public abstract insert(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract openFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract update(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
