//
//  PhotoBrowserCellPlugin.swift
//  JXPhotoBrowser
//
//  Created by JiongXing on 2018/5/16.
//

import Foundation

public protocol PhotoBrowserCellPlugin {


    /// 离开 cell
    func photoBrowserCellDidEndDisplay(_ cell: PhotoBrowserCell, at index: Int)
  
    /// 即将显示 Cell
    func photoBrowserCellWillDisplay(_ cell: PhotoBrowserCell, at index: Int)
  
    /// 每次取复用 cell 时会调用
    func photoBrowserCellDidReused(_ cell: PhotoBrowserCell, at index: Int)

    /// PhotoBrowserCell 执行布局方法时调用
    func photoBrowserCellDidLayout(_ cell: PhotoBrowserCell)
  
    func photoBrowserImageViewFrameChanged(_ cell: PhotoBrowserCell, imageView: UIImageView, duration: TimeInterval)

    /// 设置图片资源时回调
    func photoBrowserCellSetImage(_ cell: PhotoBrowserCell, placeholder: UIImage?, highQualityUrl: URL?, rawUrl: URL?)

    /// 即将加载图片
    func photoBrowserCellWillLoadImage(_ cell: PhotoBrowserCell, placeholder: UIImage?, url: URL?)

    /// 正在加载图片
    func photoBrowserCellLoadingImage(_ cell: PhotoBrowserCell, receivedSize: Int64, totalSize: Int64)

    /// 加载图片完成
    func photoBrowserCellDidLoadImage(_ cell: PhotoBrowserCell, placeholder: UIImage?, url: URL?)
}

extension PhotoBrowserCellPlugin {
  
    public func photoBrowserImageViewFrameChanged(_ cell: PhotoBrowserCell, imageView: UIImageView, duration: TimeInterval) {}
  
    public func photoBrowserCellDidEndDisplay(_ cell: PhotoBrowserCell, at index: Int) {}
  
    public func photoBrowserCellWillDisplay(_ cell: PhotoBrowserCell, at index: Int) {}
  
    /// 每次取复用 cell 时会调用
    public func photoBrowserCellDidReused(_ cell: PhotoBrowserCell, at index: Int) {}

    /// PhotoBrowserCell 执行布局方法时调用
    public func photoBrowserCellDidLayout(_ cell: PhotoBrowserCell) {}

    /// 设置图片资源时回调
    public func photoBrowserCellSetImage(_ cell: PhotoBrowserCell, placeholder: UIImage?, highQualityUrl: URL?, rawUrl: URL?) {}

    /// 即将加载图片
    public func photoBrowserCellWillLoadImage(_ cell: PhotoBrowserCell, placeholder: UIImage?, url: URL?) {}

    /// 正在加载图片
    public func photoBrowserCellLoadingImage(_ cell: PhotoBrowserCell, receivedSize: Int64, totalSize: Int64) {}

    /// 加载图片完成
    public func photoBrowserCellDidLoadImage(_ cell: PhotoBrowserCell, placeholder: UIImage?, url: URL?) {}
}
