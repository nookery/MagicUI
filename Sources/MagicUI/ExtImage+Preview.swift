import SwiftUI

/// Image 扩展功能演示视图
struct ImageExtensionDemoView: View {
    var body: some View {
        VStack(spacing: 24) {
            // MARK: - A
            ImageIconSection(title: "A", icons: [
                ("添加", Image.add),
                ("添加圆形", Image.addCircle),
                ("添加用户", Image.addUser),
                ("飞行模式", Image.airplane),
                ("艺术家", Image.artist),
                ("专辑", Image.album),
                ("App Store", Image.appStore),
                ("音频文档", Image.audioDocument),
                ("输入设备", Image.audioInput),
                ("输出设备", Image.audioOutput),
            ])

            // MARK: - B
            ImageIconSection(title: "B", icons: [
                ("电池", Image.battery),
                ("蓝牙", Image.bluetooth),
                ("快退", Image.backward),
                ("快退填充", Image.backwardEndFill),
                ("备份", Image.backup),
                ("备份填充", Image.backupFill),
                ("备份历史", Image.backupHistory),
                ("备份恢复", Image.backupRestore),
                ("备份恢复填充", Image.backupRestoreFill),
            ])

            // MARK: - C
            ImageIconSection(title: "C", icons: [
                ("日历", Image.calendar),
                ("日历填充", Image.calendarFill),
                ("日历应用", Image.calendarApp),
                ("日历应用填充", Image.calendarAppFill),
                ("图表", Image.chart),
                ("勾选", Image.checkmark),
                ("勾选简单", Image.checkmarkSimple),
                ("关闭", Image.close),
                ("云存储", Image.cloud),
                ("云存储填充", Image.cloudFill),
                ("云下载", Image.cloudDownload),
                ("云禁用", Image.cloudSlash),
                ("云上传", Image.cloudUpload),
                ("代码", Image.code),
                ("评论", Image.comment),
                ("评论填充", Image.commentFill),
                ("控制台", Image.console),
                ("通讯录", Image.contacts),
                ("通讯录填充", Image.contactsFill),
                ("复制", Image.copy),
                ("剪切", Image.cut),
                ("文档", Image.doc),
                ("文档", Image.document),
                ("文档填充", Image.documentFill),
                ("文档填充备选", Image.documentFillAlt),
                ("调试", Image.debug),
                ("下载", Image.download),
                ("二进制文档", Image.docBinary),
            ])

            // MARK: - E
            ImageIconSection(title: "E", icons: [
                ("编辑", Image.edit),
                ("编辑圆形", Image.editCircle),
                ("编辑填充", Image.editCircleFill),
                ("邮件", Image.mail),
                ("邮件填充", Image.mailFill),
                ("均衡器", Image.equalizer),
                ("错误", Image.error),
                ("退出全屏", Image.exitFullscreen),
            ])

            // MARK: - F
            ImageIconSection(title: "F", icons: [
                ("FaceTime", Image.faceTime),
                ("FaceTime填充", Image.faceTimeFill),
                ("筛选", Image.filter),
                ("快进", Image.forward),
                ("快进填充", Image.forwardEndFill),
                ("快进10秒", Image.goforward10),
                ("快退10秒", Image.gobackward10),
                ("文件夹", Image.folder),
                ("文件夹填充", Image.folderFill),
            ])

            // MARK: - G
            ImageIconSection(title: "G", icons: [
                ("齿轮", Image.gear),
                ("地球", Image.globe),
                ("网格", Image.grid),
                ("网格填充", Image.gridFill),
            ])

            // MARK: - H
            ImageIconSection(title: "H", icons: [
                ("喜欢", Image.heart),
                ("喜欢填充", Image.heartFill),
                ("健康", Image.health),
                ("健康填充", Image.healthFill),
            ])

            // MARK: - I
            ImageIconSection(title: "I", icons: [
                ("iCloud文件夹", Image.iCloudFolder),
                ("iCloud下载", Image.iCloudDownload),
                ("图片文档", Image.imageDocument),
                ("信息", Image.info),
            ])

            // MARK: - L
            ImageIconSection(title: "L", icons: [
                ("歌词", Image.lyrics),
                ("定位", Image.location),
                ("定位填充", Image.locationFill),
                ("列表", Image.list),
                ("列表圆形", Image.listCircle),
                ("列表填充", Image.listCircleFill),
                ("日志", Image.log),
                ("链接", Image.link),
                ("链接圆形", Image.linkCircle),
            ])

            // MARK: - M
            ImageIconSection(title: "M", icons: [
                ("地图", Image.maps),
                ("地图填充", Image.mapsFill),
                ("消息", Image.message),
                ("消息填充", Image.messageFill),
                ("邮件应用", Image.mailApp),
                ("邮件应用填充", Image.mailAppFill),
                ("减少", Image.minus),
                ("减少圆形", Image.minusCircle),
                ("更多", Image.more),
                ("音乐", Image.music),
                ("音乐填充", Image.musicFill),
                ("音符", Image.musicNote),
                ("音符列表", Image.musicNoteList),
                ("音乐仓库", Image.musicLibrary),
                ("音乐仓库填充", Image.musicLibraryFill),
                ("音乐文件夹", Image.musicFolder),
                ("静音", Image.mute),
            ])

            // MARK: - N
            ImageIconSection(title: "N", icons: [
                ("通知", Image.notification),
                ("通知填充", Image.notificationFill),
                ("通知设置", Image.notificationSetting),
            ])

            // MARK: - O
            ImageIconSection(title: "O", icons: [
            ])

            // MARK: - P
            ImageIconSection(title: "P", icons: [
                ("粘贴", Image.paste),
                ("播放", Image.play),
                ("播放填充", Image.playFill),
                ("PDF文档", Image.pdfDocument),
                ("占位", Image.placeholder),
                ("暂停", Image.pause),
                ("暂停填充", Image.pauseFill),
                ("人事圆形", Image.personCropCircle),
                ("人物圆形", Image.personCircle),
                ("用户组", Image.personGroup),
                ("用户组填充", Image.personGroupFill),
                ("用户组禁用", Image.personGroupSlash),
            ])

            // MARK: - Q
            ImageIconSection(title: "Q", icons: [
                ("质量", Image.qualitySetting),
            ])

            // MARK: - R
            ImageIconSection(title: "R", icons: [
                ("重置", Image.reset),
                ("刷新", Image.refresh),
                ("刷新圆形", Image.refreshCircle),
                ("刷新圆形填充", Image.refreshCircleFill),
                ("双箭头刷新", Image.refreshAlt),
                ("双箭头刷新圆形", Image.refreshAltCircle),
                ("双箭头刷新圆形填充", Image.refreshAltCircleFill),
                ("重新加载", Image.reload),
                ("重新开始", Image.restart),
                ("删除用户", Image.removeUser),
                ("备忘录", Image.notes),
                ("备忘录填充", Image.notesFill),
                ("只读", Image.readOnly),
                ("只读填充", Image.readOnlyFill),
                ("随机播放", Image.shuffle),
                ("单曲循环", Image.repeat1),
                ("列表循环", Image.repeatAll),
                ("提醒事项", Image.reminders),
                ("提醒事项填充", Image.remindersFill),
            ])

            // MARK: - S
            ImageIconSection(title: "S", icons: [
                ("Safari", Image.safari),
                ("Safari填充", Image.safariFill),
                ("清除", Image.trash),
                ("清除填充", Image.trashFill),
                ("删除线", Image.strikethrough),
                ("搜索", Image.search),
                ("设置", Image.settings),
                ("设置填充", Image.settingsFill),
                ("上传", Image.upload),
                ("分享", Image.share),
                ("分享备选", Image.shareAlt),
                ("排序", Image.sort),
                ("同步", Image.sync),
                ("同步圆形", Image.syncCircle),
                ("同步圆形填充", Image.syncCircleFill),
                ("系统设置", Image.systemSettings),
                ("系统设置填充", Image.systemSettingsFill),
                ("停止", Image.stop),
                ("星标", Image.star),
                ("星标填充", Image.starFill),
                ("股市", Image.stocks),
                ("股市填充", Image.stocksFill),
                ("速度计", Image.speedometer),
                ("中速", Image.speedometerMedium),
                ("高速", Image.speedometerHigh),
            ])

            // MARK: - T
            ImageIconSection(title: "T", icons: [
                ("表格", Image.table),
                ("表格填充", Image.tableFill),
                ("表格合并", Image.tableMerge),
                ("表格分割", Image.tableSplit),
                ("文本文档", Image.textDocument),
                ("TextEdit", Image.textEdit),
                ("TextEdit填充", Image.textEditFill),
                ("主题", Image.themeSetting),
                ("计时器", Image.timer),
                ("计时器填充", Image.timerFill),
                ("终端", Image.terminal),
                ("终端填充", Image.terminalFill),
                ("Apple终端", Image.appleTerminal),
                ("终端应用", Image.terminalApp),
            ])

            // MARK: - U
            ImageIconSection(title: "U", icons: [
                ("用户", Image.user),
                ("用户填充", Image.userFill),
                ("上传备选", Image.uploadAlt),
            ])

            // MARK: - V
            ImageIconSection(title: "V", icons: [
                ("版本", Image.versionInfo),
                ("视频文档", Image.videoDocument),
                ("语音备忘录", Image.voiceMemos),
                ("语音备忘录填充", Image.voiceMemosFill),
                ("音量", Image.volume),
                ("音量填充", Image.volumeFill),
                ("音量调节", Image.volumeSlider),
                ("音量设置", Image.volumeSetting),
            ])

            // MARK: - W
            ImageIconSection(title: "W", icons: [
                ("WiFi", Image.wifi),
                ("钱包", Image.wallet),
                ("钱包填充", Image.walletFill),
                ("警告", Image.warning),
                ("天气", Image.weather),
                ("天气填充", Image.weatherFill),
            ])

            // MARK: - X
            ImageIconSection(title: "X", icons: [
                ("Xcode", Image.xcode),
                ("Xcode填充", Image.xcodeFill),
                ("压缩文档", Image.zipDocument),
            ])

            // MARK: - Y
            ImageIconSection(title: "Y", icons: [
            ])

            // MARK: - Z
            ImageIconSection(title: "Z", icons: [
                ("全屏", Image.fullscreen),
                ("时钟", Image.clock),
                ("时钟填充", Image.clockFill),
                ("时钟应用", Image.clockApp),
                ("时钟应用填充", Image.clockAppFill),
                ("家庭", Image.home),
                ("家庭填充", Image.homeFill),
                ("快捷指令", Image.shortcuts),
                ("快捷指令填充", Image.shortcutsFill),
                ("活动记录", Image.activity),
                ("活动记录填充", Image.activityFill),
                ("预览", Image.preview),
                ("预览填充", Image.previewFill),
                ("QuickTime", Image.quickTime),
                ("QuickTime填充", Image.quickTimeFill),
                ("照片", Image.photos),
                ("照片填充", Image.photosFill),
                ("信息", Image.messages),
                ("信息填充", Image.messagesFill),
                ("访达", Image.finder),
                ("访达填充", Image.finderFill),
                ("密码", Image.passwords),
                ("密码填充", Image.passwordsFill),
                ("背景色", Image.backgroundColor),
                ("标尺", Image.ruler),
                ("关闭备选", Image.closeAlt),
                ("家庭备选", Image.house),
                ("家庭填充备选", Image.houseFill),
                ("画笔", Image.paintbrush),
                ("调色板", Image.paintpalette),
                ("清除格式", Image.clearFormat),
                ("箭头循环", Image.arrowClockwise),
                ("向上箭头圆形", Image.arrowUpCircle),
                ("上一页", Image.previousPage),
                ("下一页", Image.nextPage),
                ("上一页圆形", Image.previousPageCircle),
                ("下一页圆形", Image.nextPageCircle),
                ("上一页圆形填充", Image.previousPageCircleFill),
                ("下一页圆形填充", Image.nextPageCircleFill),
                ("第一页", Image.firstPage),
                ("最后一页", Image.lastPage),
                ("工具栏", Image.toolbar),
                ("工具栏填充", Image.toolbarFill),
                ("顶部工具栏", Image.topToolbar),
                ("顶部工具栏填充", Image.topToolbarFill),
                ("占位备选", Image.placeholderAlt),
                ("正方形", Image.square),
                ("虚线正方形", Image.squareDashed),
                ("圆形叠加正方形", Image.squareOnCircle),
                ("圆点圆形", Image.dotCircle),
                ("下划线", Image.underline),
            ])
        }
        .padding()
        .frame(width: 600)
    }
}

/// Image 图标分类展示组件
struct ImageIconSection: View {
    let title: String
    let icons: [(String, Image)]

    var body: some View {
        if !icons.isEmpty {
            VStack(alignment: .leading, spacing: 12) {
                Text(title)
                    .font(.headline)
                    .foregroundStyle(.secondary)

                LazyVGrid(columns: [
                    GridItem(.adaptive(minimum: 60)),
                ], spacing: 16) {
                    ForEach(0..<icons.count, id: \.self) { index in
                        ImageDemoItem(name: icons[index].0, image: icons[index].1)
                    }
                }
                .padding()
                .background(.background.secondary)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        }
    }
}

/// Image 图标演示项
struct ImageDemoItem: View {
    let name: String
    let image: Image

    var body: some View {
        VStack {
            image
                .font(.title2)
                .frame(height: 30)
            Text(name)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview("Image图标演示") {
    NavigationStack {
        ImageExtensionDemoView()
    }
}
